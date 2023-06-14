//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import XCTest
@testable import AWSPredictionsPlugin

final class Date_EpochMillisecondsTestCase: XCTestCase {
    func test_dateEpochMilliseconds() {
        let timeIntervalSince1970: Double = 8675309
        let date = Date(timeIntervalSince1970: timeIntervalSince1970)
        let expectedEpoch = Double(date.epochMilliseconds / 1000)
        XCTAssertEqual(date, Date(timeIntervalSince1970: expectedEpoch))
    }
}
