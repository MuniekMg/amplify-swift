//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import XCTest
@testable import AWSPredictionsPlugin

final class SigV4Signer_RequestBodyTestCase: XCTestCase {
    func test_string() {
        let requestBody = SigV4Signer.RequestBody.string("hello, world!")
        let hash = requestBody.hash(requestBody.input)
        XCTAssertEqual(hash, "68e656b251e67e8358bef8483ab0d51c6619f3e7a1a9f0e75838d41ff368f728")
    }

    func test_data() {
        let requestBody = SigV4Signer.RequestBody.data(.init())
        let hash = requestBody.hash(requestBody.input)
        XCTAssertEqual(hash, "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855")
    }
}
