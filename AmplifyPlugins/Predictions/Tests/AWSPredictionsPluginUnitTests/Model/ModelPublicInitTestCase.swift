//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import XCTest
@_spi(PredictionsFaceLiveness) import AWSPredictionsPlugin
@testable import AWSPredictionsPlugin

final class ModelPublicInitTestCase: XCTestCase {

    func test_livenessEventKindRawRep_challenge() {
        let rawValue = "ServerSessionInformationEvent"
        let event = LivenessEventKind.Server(rawValue: rawValue)
        XCTAssertEqual(event, .challenge)
    }

    func test_livenessEventKindRawRep_disconnect() {
        let rawValue = "DisconnectionEvent"
        let event = LivenessEventKind.Server(rawValue: rawValue)
        XCTAssertEqual(event, .disconnect)
    }

    func test_livenessEventKindExceptionRawRep_accessDenied() {
        let rawValue = "AccessDeniedException"
        let exception = LivenessEventKind.Exception(rawValue: rawValue)
        XCTAssertEqual(exception, .accessDenied)
    }

    func test_livenessEventKindExceptionRawRep_validation() {
        let rawValue = "ValidationException"
        let exception = LivenessEventKind.Exception(rawValue: rawValue)
        XCTAssertEqual(exception, .validation)
    }

    func test_livenessEventKindExceptionRawRep_internalServer() {
        let rawValue = "InternalServerException"
        let exception = LivenessEventKind.Exception(rawValue: rawValue)
        XCTAssertEqual(exception, .internalServer)
    }

    func test_livenessEventKindExceptionRawRep_throttling() {
        let rawValue = "ThrottlingException"
        let exception = LivenessEventKind.Exception(rawValue: rawValue)
        XCTAssertEqual(exception, .throttling)
    }

    func test_livenessEventKindExceptionRawRep_serviceQuotaExceeded() {
        let rawValue = "ServiceQuotaExceededException"
        let exception = LivenessEventKind.Exception(rawValue: rawValue)
        XCTAssertEqual(exception, .serviceQuotaExceeded)
    }

    func test_livenessEventKindExceptionRawRep_serviceUnavailable() {
        let rawValue = "ServiceUnavailableException"
        let exception = LivenessEventKind.Exception(rawValue: rawValue)
        XCTAssertEqual(exception, .serviceUnavailable)
    }

    func test_livenessEventKindExceptionRawRep_sessionNotFound() {
        let rawValue = "SessionNotFoundException"
        let exception = LivenessEventKind.Exception(rawValue: rawValue)
        XCTAssertEqual(exception, .sessionNotFound)
    }

    func test_livenessEventKindDebugDescription_serverChallenge() {
        let event = LivenessEventKind.server(.challenge)
        XCTAssertEqual(event.debugDescription, ".server(.challenge)")
    }

    func test_livenessEventKindDebugDescription_serverDisconnect() {
        let event = LivenessEventKind.server(.disconnect)
        XCTAssertEqual(event.debugDescription, ".server(.disconnect)")
    }

    func test_livenessEventKindDebugDescription_clientInitialFaceDetected() {
        let event = LivenessEventKind.client(.initialFaceDetected)
        XCTAssertEqual(event.debugDescription, ".client(.initialFaceDetected)")
    }

    func test_livenessEventKindDebugDescription_clientVideo() {
        let event = LivenessEventKind.client(.video)
        XCTAssertEqual(event.debugDescription, ".client(.video)")
    }

    func test_livenessEventKindDebugDescription_clientFreshness() {
        let event = LivenessEventKind.client(.freshness)
        XCTAssertEqual(event.debugDescription, ".client(.freshness)")
    }

    func test_livenessEventKindDebugDescription_clientFinal() {
        let event = LivenessEventKind.client(.final)
        XCTAssertEqual(event.debugDescription, ".client(.final)")
    }

    func test_livenessEventKindDebugDescription_unknown() {
        let event = LivenessEventKind.server(.init(rawValue: "42"))
        XCTAssertEqual(event.debugDescription, "unknown")
    }



    func test_BoundingBox() {
        let (x, y, width, height) = (1.0, 2.2, 5.0, 10.1)
        let bb = FaceLivenessSession.BoundingBox(
            x: x,
            y: y,
            width: width,
            height: height
        )
        XCTAssertEqual(bb.height, height)
        XCTAssertEqual(bb.width, width)
        XCTAssertEqual(bb.x, x)
        XCTAssertEqual(bb.y, y)
    }
}

extension BoundingBox: Equatable {
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.width == rhs.width
        && lhs.height == rhs.height
        && lhs.left == rhs.left
        && lhs.top == rhs.top
    }
}
