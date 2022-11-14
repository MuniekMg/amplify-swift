//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import CoreLocation
import AWSLocation

class AWSDeviceTracker: NSObject, CLLocationManagerDelegate, AWSDeviceTrackingBehavior {
    
    static let lastLocationUpdateTimeKey = "com.amazonaws.Amplify.AWSLocationGeoPlugin.lastLocationUpdateTime"
    static let lastUpdatedLocationKey = "com.amazonaws.Amplify.AWSLocationGeoPlugin.lastUpdatedLocation"
    static let deviceIDKey = "com.amazonaws.Amplify.AWSLocationGeoPlugin.deviceID"
    static let batchSizeForLocationInput = 10
    
    var options: Geo.TrackingSessionOptions
    let locationManager: CLLocationManager
    let locationService: AWSLocationBehavior
    let networkMonitor: GeoNetworkMonitorBehavior
    let locationStore: LocationPersistenceBehavior
    var unsubscribeToken: UnsubscribeToken?
    
    init(options: Geo.TrackingSessionOptions,
         locationManager: CLLocationManager,
         locationService: AWSLocationBehavior,
         networkMonitor: GeoNetworkMonitorBehavior,
         locationStore: LocationPersistenceBehavior) throws {
        self.options = options
        self.locationManager = locationManager
        self.locationService = locationService
        self.networkMonitor = networkMonitor
        self.locationStore = locationStore
    }
    
    func configure(with options: Geo.TrackingSessionOptions) {
        self.options = options
        configureLocationManager(with: options)
    }
    
    // setting `CLLocationManager` properties requires a UITest or running test in App mode
    // with appropriate location permissions. Moved out to separate method to facilitate
    // unit testing
    func configureLocationManager(with options: Geo.TrackingSessionOptions) {
        locationManager.desiredAccuracy = options.desiredAccuracy.clLocationAccuracy
        locationManager.allowsBackgroundLocationUpdates = options.allowsBackgroundLocationUpdates
        locationManager.pausesLocationUpdatesAutomatically = options.pausesLocationUpdatesAutomatically
        locationManager.activityType = options.activityType
        #if !os(macOS)
        locationManager.showsBackgroundLocationIndicator = options.showsBackgroundLocationIndicator
        #endif
        locationManager.distanceFilter = options.distanceFilter
    }
    
    func startTracking(for deviceId: String) throws {
        networkMonitor.start()
        UserDefaults.standard.removeObject(forKey: AWSDeviceTracker.deviceIDKey)
        UserDefaults.standard.removeObject(forKey: AWSDeviceTracker.lastLocationUpdateTimeKey)
        UserDefaults.standard.removeObject(forKey: AWSDeviceTracker.lastUpdatedLocationKey)
        UserDefaults.standard.set(deviceId, forKey: AWSDeviceTracker.deviceIDKey)
        unsubscribeToken = Amplify.Hub.listen(to: .auth, eventName: HubPayload.EventName.Auth.signedOut) { payload in
            self.stopTracking()
        }
        locationManager.delegate = self
        try checkPermissionsAndStartTracking()
    }
    
    func stopTracking() {
        // flush out stored events
        if let didUpdatePositions = options.locationProxyDelegate.didUpdatePositions {
            batchSendStoredLocationsToProxyDelegate(with: [], didUpdatePositions: didUpdatePositions)
        } else {
            batchSendStoredLocationsToService(with: [])
        }
        networkMonitor.cancel()
        locationManager.stopUpdatingLocation()
        locationManager.stopMonitoringSignificantLocationChanges()
        locationManager.delegate = nil
        UserDefaults.standard.removeObject(forKey: AWSDeviceTracker.deviceIDKey)
        UserDefaults.standard.removeObject(forKey: AWSDeviceTracker.lastLocationUpdateTimeKey)
        UserDefaults.standard.removeObject(forKey: AWSDeviceTracker.lastUpdatedLocationKey)
        if let unsubscribeToken = unsubscribeToken {
            Amplify.Hub.removeListener(unsubscribeToken)
        }
    }
    
    public func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        if let clError = error as? CLError {
                switch clError {
                case CLError.denied:
                    // user denied location services, stop tracking
                    stopTracking()
                default:
                    Amplify.log.error(error: error)
                }
            } else {
                Amplify.log.error(error: error)
            }
    }
    
    public func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        do {
            try checkPermissionsAndStartTracking()
        } catch {
            Amplify.log.error(error: error)
        }
    }
    
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let currentTime = Date()
        // check if trackUntil time has elapsed
        if(options.trackUntil < currentTime) {
            let receivedPositions = mapReceivedLocationsToPositions(receivedLocations: locations, currentTime: currentTime)
            if let didUpdatePositions = options.locationProxyDelegate.didUpdatePositions {
                batchSendStoredLocationsToProxyDelegate(with: receivedPositions, didUpdatePositions: didUpdatePositions)
            } else {
                if networkMonitor.networkConnected() {
                    batchSendStoredLocationsToService(with: receivedPositions)
                    UserDefaults.standard.set(currentTime, forKey: AWSDeviceTracker.lastLocationUpdateTimeKey)
                } else {
                    // if network is unreachable and `disregardLocationUpdatesWhenOffline` is set,
                    // don't store locations in local database
                    if !options.disregardLocationUpdatesWhenOffline {
                        batchSaveLocationsToLocalStore(receivedLocations: locations, currentTime: currentTime)
                    }
                }
            }
            stopTracking()
            return
        }
        
        // fetch last saved location and update time
        var lastUpdatedLocation : CLLocation?
        if let loadedLocation = UserDefaults.standard.data(forKey: AWSDeviceTracker.lastUpdatedLocationKey),
           let decodedLocation = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(loadedLocation) as? CLLocation {
            lastUpdatedLocation = decodedLocation
        }
        let lastLocationUpdateTime = UserDefaults.standard.object(forKey: AWSDeviceTracker.lastLocationUpdateTimeKey) as? Date
        
        let thresholdReached = DeviceTrackingHelper.batchingThresholdReached(
            old: LocationUpdate(timeStamp: lastLocationUpdateTime, location: lastUpdatedLocation),
            new: LocationUpdate(timeStamp: currentTime, location: locations.last),
            batchingOption: options.batchingOption)
        
        
        if thresholdReached {
            let receivedPositions = mapReceivedLocationsToPositions(receivedLocations: locations, currentTime: currentTime)
            if let didUpdatePositions = options.locationProxyDelegate.didUpdatePositions {
                batchSendStoredLocationsToProxyDelegate(with: receivedPositions, didUpdatePositions: didUpdatePositions)
                UserDefaults.standard.set(currentTime, forKey: AWSDeviceTracker.lastLocationUpdateTimeKey)
            } else {
                if networkMonitor.networkConnected() {
                    batchSendStoredLocationsToService(with: receivedPositions)
                    UserDefaults.standard.set(currentTime, forKey: AWSDeviceTracker.lastLocationUpdateTimeKey)
                } else {
                    // if network is unreachable and `disregardLocationUpdatesWhenOffline` is set,
                    // don't store locations in local database
                    if !options.disregardLocationUpdatesWhenOffline {
                        batchSaveLocationsToLocalStore(receivedLocations: locations, currentTime: currentTime)
                    }
                }
            }
        } else {
            batchSaveLocationsToLocalStore(receivedLocations: locations, currentTime: currentTime)
        }
        
        // first time a location update is received, set it as the first locationUpdateTime for
        // future comparisons to API/delegate update time
        if lastLocationUpdateTime == nil {
            UserDefaults.standard.set(currentTime, forKey: AWSDeviceTracker.lastLocationUpdateTimeKey)
        }
        
        // first time a location update is received, save the first element from `locations` received
        if lastUpdatedLocation == nil {
            if let lastReceivedLocation = locations.first,
                let encodedLocation = try? NSKeyedArchiver.archivedData(withRootObject: lastReceivedLocation,
                                                                        requiringSecureCoding: false) {
                UserDefaults.standard.set(encodedLocation, forKey: AWSDeviceTracker.lastUpdatedLocationKey)
            } else {
                Amplify.log.error("Error storing last received location in UserDefaults")
            }
        } else {
            // save the last element from `locations` received
            if let lastReceivedLocation = locations.last,
                let encodedLocation = try? NSKeyedArchiver.archivedData(withRootObject: lastReceivedLocation,
                                                                        requiringSecureCoding: false) {
                UserDefaults.standard.set(encodedLocation, forKey: AWSDeviceTracker.lastUpdatedLocationKey)
            } else {
                Amplify.log.error("Error storing last received location in UserDefaults")
            }
        }
    }
    
    func getLocationsFromLocalStore() async throws -> [PositionInternal] {
        let storedLocations = try await locationStore.getAll()
        try await locationStore.removeAll()
        return storedLocations
    }
    
    func batchSaveLocationsToLocalStore(receivedLocations: [CLLocation], currentTime: Date) {
        Task {
            do {
                guard let deviceID = UserDefaults.standard.object(forKey: AWSDeviceTracker.deviceIDKey) as? String else {
                    Amplify.log.error("Not able to fetch deviceId from UserDefaults")
                    sendHubErrorEvent(locations: receivedLocations)
                    return
                }
                
                let positionsToStore = receivedLocations.map({ PositionInternal(timeStamp: currentTime,
                                                                                latitude: $0.coordinate.latitude,
                                                                                longitude: $0.coordinate.longitude,
                                                                                tracker: options.tracker!,
                                                                                deviceID: deviceID) })
                try await self.locationStore.insert(positions: positionsToStore)
            } catch {
              let geoError = Geo.Error.internalPluginError(
                  GeoPluginErrorConstants.errorSavingLocationsToLocalStore.errorDescription,
                  GeoPluginErrorConstants.errorSavingLocationsToLocalStore.recoverySuggestion, error)
              sendHubErrorEvent(error: geoError, locations: receivedLocations)
            }
        }
    }

    func mapReceivedLocationsToPositions(receivedLocations: [CLLocation], currentTime: Date) -> [Position] {
        guard let deviceId = UserDefaults.standard.object(forKey: AWSDeviceTracker.deviceIDKey) as? String else {
            Amplify.log.error("Not able to fetch deviceId from UserDefaults")
            let error = Geo.Error.internalPluginError(
                GeoPluginErrorConstants.errorSaveLocationsFailed.errorDescription,
                GeoPluginErrorConstants.errorSaveLocationsFailed.recoverySuggestion)
            sendHubErrorEvent(error: error, locations: receivedLocations)
            return []
        }
        
        return receivedLocations.map( {
            Position(timeStamp: currentTime,
                     location: Geo.Location(clLocation: $0.coordinate),
                     tracker: options.tracker!,
                     deviceID: deviceId)
        })
    }
    
    func mapStoredLocationsToPositions() async -> [Position] {
        do {
            let storedLocations = try await getLocationsFromLocalStore()
            return storedLocations.map( {
                Position(timeStamp: $0.timeStamp,
                         location: Geo.Location(latitude: $0.latitude,
                                                longitude: $0.longitude),
                         tracker: $0.tracker,
                         deviceID: $0.deviceID)
            } )
        } catch {
            Amplify.log.error("Unable to convert stored locations to positions.")
            let geoError = Geo.Error.internalPluginError(
                GeoPluginErrorConstants.errorFetchingLocationsFromLocalStore.errorDescription,
                GeoPluginErrorConstants.errorFetchingLocationsFromLocalStore.recoverySuggestion,
                error)
            sendHubErrorEvent(error: geoError, locations: [Position]())
        }
        return []
    }
    
    func batchSendStoredLocationsToProxyDelegate(with receivedPositions: [Position],
                                                 didUpdatePositions: @escaping (([Position]) -> Void)) {
        Task {
            var allPositions = await mapStoredLocationsToPositions()
            allPositions.append(contentsOf: receivedPositions)
            if allPositions.count > 0  {
                didUpdatePositions(allPositions)
            }
        }
    }
    
    func batchSendStoredLocationsToService(with receivedPositions: [Position]) {
        Task {
            var allPositions = await self.mapStoredLocationsToPositions()
            allPositions.append(contentsOf: receivedPositions)
            if allPositions.count == 0 {
                return
            }
            // send all locations to service
            let positionChunks = allPositions.chunked(into: AWSDeviceTracker.batchSizeForLocationInput)
            for chunk in positionChunks {
                // start a new task for each chunk
                Task {
                    do {
                        let locationUpdates = chunk.map ( {
                            LocationClientTypes.DevicePositionUpdate(
                                accuracy: nil,
                                deviceId: $0.deviceID,
                                position: [$0.location.longitude, $0.location.latitude],
                                positionProperties: nil,
                                sampleTime: Date())
                        } )
                        let input = BatchUpdateDevicePositionInput(trackerName: self.options.tracker!,
                                                                   updates: locationUpdates)
                        let response = try await locationService.updateLocation(forUpdateDevicePosition: input)
                        if let error = response.errors?.first as? Error {
                            Amplify.log.error("Unable to send locations to service.")
                            let geoError = Geo.Error.serviceError(
                                 GeoPluginErrorConstants.errorSaveLocationsFailed.errorDescription,
                                 GeoPluginErrorConstants.errorSaveLocationsFailed.recoverySuggestion,
                                 error)
                            sendHubErrorEvent(error: geoError, locations: chunk)
                            throw GeoErrorHelper.mapAWSLocationError(error)
                        }
                    } catch {
                      Amplify.log.error("Unable to send locations to service.")
                      let geoError = Geo.Error.serviceError(
                          GeoPluginErrorConstants.errorSaveLocationsFailed.errorDescription,
                          GeoPluginErrorConstants.errorSaveLocationsFailed.recoverySuggestion,
                          error)
                      sendHubErrorEvent(error: geoError, locations: chunk)
                    }
                }
            }
        }
    }
    
    func checkPermissionsAndStartTracking() throws {
        let authorizationStatus: CLAuthorizationStatus

        if #available(iOS 14, macOS 11.0, *) {
            authorizationStatus = locationManager.authorizationStatus
        } else {
            authorizationStatus = CLLocationManager.authorizationStatus()
        }
        switch authorizationStatus {
        case .authorized, .authorizedAlways, .authorizedWhenInUse:
            locationManager.startUpdatingLocation()
            if options.wakeAppForSignificantLocationChanges {
                locationManager.startMonitoringSignificantLocationChanges()
            }
        case .notDetermined:
            if options.requestAlwaysAuthorization {
                locationManager.requestAlwaysAuthorization()
            } else {
                locationManager.requestWhenInUseAuthorization()
            }
        case .restricted, .denied:
            stopTracking()
            throw Geo.Error.internalPluginError(
                GeoPluginErrorConstants.missingPermissions.errorDescription,
                GeoPluginErrorConstants.missingPermissions.recoverySuggestion
            )
        @unknown default:
            throw Geo.Error.internalPluginError(
                GeoPluginErrorConstants.missingPermissions.errorDescription,
                GeoPluginErrorConstants.missingPermissions.recoverySuggestion
            )
        }
    }
    
    func sendHubErrorEvent(error: Geo.Error? = nil, locations: [CLLocation]) {
        let geoLocations = locations.map({
            Geo.Location(latitude: $0.coordinate.latitude, longitude: $0.coordinate.longitude) })
        let data = AWSGeoHubPayloadData(error: error, locations: geoLocations)
        let payload = HubPayload(eventName: HubPayload.EventName.Geo.saveLocationsFailed, data: data)
        Amplify.Hub.dispatch(to: .geo, payload: payload)
    }
    
    func sendHubErrorEvent(error: Geo.Error? = nil, locations: [Position]) {
        let geoLocations = locations.map({
            Geo.Location(latitude: $0.location.latitude, longitude: $0.location.longitude) })
        let data = AWSGeoHubPayloadData(error: error, locations: geoLocations)
        let payload = HubPayload(eventName: HubPayload.EventName.Geo.saveLocationsFailed, data: data)
        Amplify.Hub.dispatch(to: .geo, payload: payload)
    }
}

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}

extension Geo.BatchingOption {
    enum BatchingOptionType {
        case none
        case distanceTravelledInMetres(value:Int)
        case secondsElapsed(value:Int)
    }
    
    var batchingOptionType: BatchingOptionType {
        if let dist = _metersTravelled {
            return BatchingOptionType.distanceTravelledInMetres(value: dist)
        } else if let sec = _secondsElapsed {
            return BatchingOptionType.secondsElapsed(value:sec)
        } else {
            return BatchingOptionType.none
        }
    }
}

struct LocationUpdate {
    let timeStamp: Date?
    let location: CLLocation?
    
    init(timeStamp: Date?, location: CLLocation?) {
        self.timeStamp = timeStamp
        self.location = location
    }
}