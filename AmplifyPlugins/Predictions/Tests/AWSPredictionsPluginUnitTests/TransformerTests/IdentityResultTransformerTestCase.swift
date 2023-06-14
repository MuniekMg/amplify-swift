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

final class IdentityResultTransformerTestCase: XCTestCase {

    func test_processBoundingBox_nil_rekognition() {
        let bb: RekognitionClientTypes.BoundingBox? = nil
        let cgRect = IdentifyResultTransformers.processBoundingBox(bb)
        XCTAssertNil(cgRect)
    }

    func test_processBoundingBox_defaultValues_rekognition() {
        let bb = RekognitionClientTypes.BoundingBox()
        let cgRect = IdentifyResultTransformers.processBoundingBox(bb)
        XCTAssertNil(cgRect)
    }

    func test_processBoundingBox_nonNil_rekognition() {
        let bb = RekognitionClientTypes.BoundingBox(
            height: 25,
            left: 1,
            top: 5,
            width: 42
        )
        let cgRect = IdentifyResultTransformers.processBoundingBox(bb)
        XCTAssertEqual(cgRect?.height, 25)
        XCTAssertEqual(cgRect?.width, 42)
        XCTAssertEqual(cgRect?.minX, 1)
        XCTAssertEqual(cgRect?.minY, 5)
    }

    func test_processBoundingBox_nil_textract() {
        let bb: TextractClientTypes.BoundingBox? = nil
        let cgRect = IdentifyResultTransformers.processBoundingBox(bb)
        XCTAssertNil(cgRect)
    }

    func test_processBoundingBox_defaultValues_textract() {
        let bb = TextractClientTypes.BoundingBox()
        let cgRect = IdentifyResultTransformers.processBoundingBox(bb)
        XCTAssertEqual(cgRect, .init(x: 0, y: 0, width: 0, height: 0))
    }

    func test_processBoundingBox_nonNil_textract() {
        let bb = TextractClientTypes.BoundingBox(
            height: 25,
            left: 1,
            top: 5,
            width: 42
        )
        let cgRect = IdentifyResultTransformers.processBoundingBox(bb)
        XCTAssertEqual(cgRect?.height, 25)
        XCTAssertEqual(cgRect?.width, 42)
        XCTAssertEqual(cgRect?.minX, 1)
        XCTAssertEqual(cgRect?.minY, 5)
    }

    func test_processPolygon_nil_rekognition() {
        let points: [RekognitionClientTypes.Point]? = nil
        let polygon = IdentifyResultTransformers.processPolygon(points)
        XCTAssertNil(polygon)
    }

    func test_processPolygon_emptyArray_rekognition() throws {
        let points: [RekognitionClientTypes.Point] = []
        let polygon = try XCTUnwrap(IdentifyResultTransformers.processPolygon(points))
        XCTAssertTrue(polygon.points.isEmpty)
    }

    func test_processPolygon_nilXY_rekognition() throws {
        let points: [RekognitionClientTypes.Point] = [
            .init(x: 1, y: nil),
            .init(x: 2, y: 4)
        ]
        let polygon = try XCTUnwrap(IdentifyResultTransformers.processPolygon(points))
        XCTAssertEqual(polygon.points.count, 1)
        XCTAssertEqual(polygon.points[0], .init(x: 2, y: 4))
    }

    func test_processPolygon_nil_textract() {
        let points: [TextractClientTypes.Point]? = nil
        let polygon = IdentifyResultTransformers.processPolygon(points)
        XCTAssertNil(polygon)
    }

    func test_processPolygon_emptyArray_textract() throws {
        let points: [TextractClientTypes.Point] = []
        let polygon = try XCTUnwrap(IdentifyResultTransformers.processPolygon(points))
        XCTAssertTrue(polygon.points.isEmpty)
    }

    func test_processPolygon_base_textract() throws {
        let points: [TextractClientTypes.Point] = [
            .init(),
            .init(x: 25, y: 42)
        ]
        let polygon = try XCTUnwrap(IdentifyResultTransformers.processPolygon(points))
        XCTAssertEqual(polygon.points.count, 2)
        XCTAssertEqual(polygon.points[0], .init(x: 0, y: 0))
        XCTAssertEqual(polygon.points[1], .init(x: 25, y: 42))
    }

    func test_processLandmarks_nil() throws {
        let landmarks = IdentifyResultTransformers.processLandmarks(nil)
        XCTAssert(landmarks.isEmpty)
    }

    func test_processLandmarks_emptyArray() throws {
        let landmarks = IdentifyResultTransformers.processLandmarks([])
        XCTAssert(landmarks.flatMap(\.points).isEmpty)
    }

    func test_processLandmarks_nilXY() throws {
        let rekLandmarks: [RekognitionClientTypes.Landmark] = [
            .init(type: .eyeleft, x: 0, y: nil),
            .init(type: .eyeright, x: 25, y: 42)
        ]

        let landmarks = IdentifyResultTransformers.processLandmarks(rekLandmarks)
        let nonEmptyLandmarks = landmarks.filter { !$0.points.isEmpty }
        XCTAssertEqual(nonEmptyLandmarks.count, 2)
        XCTAssertEqual(
            nonEmptyLandmarks[0],
            .init(kind: .allPoints, points: [.init(x: 25, y: 42)])
        )

        XCTAssertEqual(
            nonEmptyLandmarks[1],
            .init(kind: .rightEye, points: [.init(x: 25, y: 42)])
        )
    }

    func test_processLandmarks_base() throws {
        let rekLandmarks: [RekognitionClientTypes.Landmark] = [
            .init(type: .eyeleft, x: 0, y: 3),
            .init(type: .lefteyebrowup, x: 1, y: 2),
            .init(type: .leftpupil, x: 3, y: 4),

            .init(type: .eyeright, x: 25, y: 42),
            .init(type: .righteyebrowup, x: 5, y: 6),
            .init(type: .rightpupil, x: 7, y: 8),

            .init(type: .nose, x: 9, y: 10),
            .init(type: .noseleft, x: 11, y: 12),

            .init(type: .mouthup, x: 13, y: 14),
            .init(type: .chinbottom, x: 15, y: 16),

            .init(type: .none, x: 17, y: 18)
        ]

        let landmarks = IdentifyResultTransformers.processLandmarks(rekLandmarks)

        let specificLandmarks: [Predictions.Landmark] = [
            .init(kind: .leftEye, points: [.init(x: 0, y: 3)]),
            .init(kind: .leftEyebrow, points: [.init(x: 1, y: 2)]),
            .init(kind: .leftPupil, points: [.init(x: 3, y: 4)]),
            .init(kind: .leftEye, points: [.init(x: 25, y: 42)]),
            .init(kind: .rightEyebrow, points: [.init(x: 5, y: 6)]),
            .init(kind: .rightPupil, points: [.init(x: 7, y: 8)]),
            .init(kind: .nose, points: [.init(x: 9, y: 10)]),
            .init(kind: .noseCrest, points: [.init(x: 11, y: 12)]),
            .init(kind: .outerLips, points: [.init(x: 13, y: 14)]),
            .init(kind: .faceContour, points: [.init(x: 15, y: 16)]),
        ]

        let allPoints = Predictions.Landmark(
            kind: .allPoints,
            points: specificLandmarks.flatMap(\.points) + [.init(x: 17, y: 18)]
        )

        let expectedLandmarks = [allPoints] + specificLandmarks

        let reconcileLandmarks: ([Predictions.Landmark], [Predictions.Landmark]) -> (Predictions.Landmark.Kind) -> Bool = { generated, expected in
            { kind in
                generated.first(where: { $0.kind == kind })?.points == expected.first(where: { $0.kind == kind })?.points
            }

        }

        let matchPoints = reconcileLandmarks(landmarks, expectedLandmarks)
        let expectedLandmarkTypes = expectedLandmarks.map(\.kind)

        for expectedLandmarkType in expectedLandmarkTypes {
            XCTAssert(matchPoints(expectedLandmarkType))
        }
    }
}
