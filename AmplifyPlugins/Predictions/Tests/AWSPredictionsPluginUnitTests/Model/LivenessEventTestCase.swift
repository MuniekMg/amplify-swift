//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import XCTest
@_spi(PredictionsFaceLiveness) import AWSPredictionsPlugin
@testable import AWSPredictionsPlugin

final class LivenessEventTestCase: XCTestCase {

    func test_livenessEvent_initialFaceDetected() throws {
        let initialClientEvent = InitialClientEvent(
            challengeID: UUID().uuidString,
            initialFaceLocation: .init(
                boundingBox: .init(x: 0, y: 0, width: 300, height: 400),
                startTimestamp: 42
            ),
            videoStartTime: 25
        )

        let livenessEvent = try LivenessEvent.initialFaceDetected(
            event: initialClientEvent
        )

        XCTAssertEqual(livenessEvent.eventTypeHeader, "ClientSessionInformationEvent")

        let decodedPayload = try JSONDecoder().decode(
            ClientSessionInformationEvent.self,
            from: livenessEvent.payload
        )

        let expectedPayload = ClientSessionInformationEvent(
            challenge: .init(
                faceMovementAndLightChallenge: .init(
                    challengeID: initialClientEvent.challengeID,
                    targetFace: nil,
                    initialFace: InitialFace(
                        boundingBox: .init(
                            boundingBox: initialClientEvent.initialFaceLocation.boundingBox
                        ),
                        initialFaceDetectedTimeStamp: initialClientEvent.initialFaceLocation.startTimestamp
                    ),
                    videoStartTimestamp: initialClientEvent.videoStartTimestamp,
                    colorDisplayed: nil,
                    videoEndTimeStamp: nil
                )
            )
        )

        XCTAssertEqual(decodedPayload, expectedPayload)

        XCTAssertEqual(
            livenessEvent.debugDescription,
            """
            LivenessEvent<InitialClientEvent>(
                payload: 235 bytes,
                eventKind: .client(.initialFaceDetected),
                eventTypeHeader: ClientSessionInformationEvent
            )
            """
        )
    }
}


extension LivenessEvent: Equatable where T: Equatable & Codable {
    public static func == (lhs: Self, rhs: Self) -> Bool {
        let lhsDecodedPayload = try? JSONDecoder().decode(T.self, from: lhs.payload)
        let rhsDecodedPayload = try? JSONDecoder().decode(T.self, from: rhs.payload)

        guard let lhsDecodedPayload = lhsDecodedPayload,
              let rhsDecodedPayload = rhsDecodedPayload
        else { return false }

        return lhs.eventKind == rhs.eventKind
        && lhs.eventTypeHeader == rhs.eventTypeHeader
        && lhsDecodedPayload == rhsDecodedPayload
    }
}