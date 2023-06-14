//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import XCTest
@testable import AWSPredictionsPlugin
@_spi(PredictionsFaceLiveness) import AWSPredictionsPlugin

final class StreamingSessionURLTestCase: XCTestCase {
    func test_validURL() throws {
        let region = "us-east-1"
        let expectedOutput = "wss://streaming-rekognition.\(region).amazonaws.com/start-face-liveness-session-websocket"
        let url = try streamingSessionURL(for: region)
        XCTAssertEqual(url.absoluteString, expectedOutput)
    }

    func test_invalidURL() throws {
        let region = "\\"
        do {
            let url = try streamingSessionURL(for: region)
            XCTFail("expected invalid url - \(url)")
        } catch let error as FaceLivenessSessionError {
            XCTAssertEqual(error, .invalidRegion)
        } catch {
            XCTFail("Expected FaceLivenessSession.invalidRegion. Caught: \(error)")
        }
    }
}
