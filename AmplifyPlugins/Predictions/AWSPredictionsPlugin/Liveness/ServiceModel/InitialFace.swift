//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

struct InitialFace: Codable, Equatable {
    let boundingBox: BoundingBox
    let initialFaceDetectedTimeStamp: UInt64

    enum CodingKeys: String, CodingKey {
        case boundingBox = "BoundingBox"
        case initialFaceDetectedTimeStamp = "InitialFaceDetectedTimestamp"
    }
}
