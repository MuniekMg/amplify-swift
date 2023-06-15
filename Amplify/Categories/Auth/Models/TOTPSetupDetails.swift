//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public struct TOTPSetupDetails {

    /// Secret code returned by the service to help setting up TOTP
    public let secretCode: String

    public init(secretCode: String) {
        self.secretCode = secretCode
    }

    public func getSetupURI(
        appName: String,
        accountName: String? = nil) -> URL? {
            fatalError("HS: Implement me!!")
    }

}
