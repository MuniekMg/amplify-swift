//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import XCTest
@testable import AWSPredictionsPlugin
import AWSRekognition
import AWSTextract
import Amplify


final class IdentifyCelebritiesResultTransformerTestCase: XCTestCase {

    var baseCelebrity = RekognitionClientTypes.Celebrity(
        face: .init(
            boundingBox: .init(height: 42, left: 0, top: 0, width: 25),
            confidence: 0.9,
            emotions: nil,
            landmarks: nil,
            pose: .init(pitch: 0.5, roll: 0.4, yaw: 0.3),
            quality: nil,
            smile: .init(confidence: 0.8, value: true)
        ),
        id: "abc",
        knownGender: .init(type: .male),
        matchConfidence: 0.8,
        name: "some name",
        urls: []
    )

    func test_processCelebs_emptyArray() {
        let rekCelebrities: [RekognitionClientTypes.Celebrity] = []
        let celebrities = IdentifyCelebritiesResultTransformers.processCelebs(rekCelebrities)
        XCTAssert(celebrities.isEmpty)
    }

    func test_processCelebs_base() throws {
        let url = try XCTUnwrap(URL(string: "https://amplify.aws.com"))
        baseCelebrity.urls = [url.absoluteString]
        let rekCelebrities = [baseCelebrity]

        let celebrities = IdentifyCelebritiesResultTransformers.processCelebs(rekCelebrities)
        let expectedCelebrity = Predictions.Celebrity(
            metadata: .init(
                name: "some name",
                identifier: "abc",
                urls: [url],
                pose: .init(pitch: 0.5, roll: 0.4, yaw: 0.3)
            ),
            boundingBox: .init(x: 0, y: 0, width: 25, height: 42),
            landmarks: []
        )
        XCTAssertEqual(celebrities.count, 1)
        XCTAssertEqual(celebrities[0].landmarks, expectedCelebrity.landmarks)
        XCTAssertEqual(celebrities[0].metadata.name, expectedCelebrity.metadata.name)
        XCTAssertEqual(celebrities[0].metadata.identifier, expectedCelebrity.metadata.identifier)
        XCTAssertEqual(celebrities[0].metadata.urls, expectedCelebrity.metadata.urls)
        XCTAssertEqual(
            celebrities[0].metadata.pose.yaw,
            expectedCelebrity.metadata.pose.yaw,
            accuracy: 0.0001
        )
        XCTAssertEqual(
            celebrities[0].metadata.pose.pitch,
            expectedCelebrity.metadata.pose.pitch,
            accuracy: 0.0001
        )
        XCTAssertEqual(
            celebrities[0].metadata.pose.roll,
            expectedCelebrity.metadata.pose.roll,
            accuracy: 0.0001
        )
    }

    func test_processCelebs_noName() throws {
        baseCelebrity.name = nil
        let rekCelebrities = [baseCelebrity]
        let celebrities = IdentifyCelebritiesResultTransformers.processCelebs(rekCelebrities)
        XCTAssert(celebrities.isEmpty)
    }

    func test_processCelebs_noPose() throws {
        baseCelebrity.face?.pose = nil
        let rekCelebrities = [baseCelebrity]
        let celebrities = IdentifyCelebritiesResultTransformers.processCelebs(rekCelebrities)
        XCTAssert(celebrities.isEmpty)
    }

    func test_processCelebs_noBB() throws {
        baseCelebrity.face?.boundingBox = nil
        let rekCelebrities = [baseCelebrity]
        let celebrities = IdentifyCelebritiesResultTransformers.processCelebs(rekCelebrities)
        XCTAssert(celebrities.isEmpty)
    }

    func test_processCelebs_invalidURL() throws {
        baseCelebrity.urls = [""]
        let rekCelebrities = [baseCelebrity]
        let celebrities = IdentifyCelebritiesResultTransformers.processCelebs(rekCelebrities)
        XCTAssertEqual(celebrities.count, 1)
        XCTAssert(celebrities[0].metadata.urls.isEmpty)
    }

}

extension Predictions.Celebrity: Equatable {
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.boundingBox == rhs.boundingBox
        && lhs.landmarks == rhs.landmarks
        && lhs.metadata == rhs.metadata
    }
}


extension Predictions.Celebrity.Metadata: Equatable {
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.name == rhs.name
        && lhs.identifier == rhs.identifier
        && lhs.urls == rhs.urls
        && lhs.pose == rhs.pose
    }
}

extension Predictions.Pose: Equatable {
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.pitch == rhs.pitch
        && lhs.roll == rhs.roll
        && lhs.yaw == rhs.yaw
    }
}
