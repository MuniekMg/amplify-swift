//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//
import Foundation
import Amplify
import ClientRuntime

extension ClientRuntime.ClientError: AuthErrorConvertible {
    var fallbackDescription: String { "" }

    var authError: AuthError {
        let error: AuthError
        switch self {
        case .pathCreationFailed(let message):
            error = .service(message, "", self)
        case .queryItemCreationFailed(let message):
            error = .service(message, "", self)
        case .serializationFailed(let message):
            error = .service(message, "", self)
        case .dataNotFound(let message):
            error = .service(message, "", self)
        case .unknownError(let message):
            error = .unknown(message, self)
        case .authError(let message):
            error = .notAuthorized(
                message,
                "Check if you are authorized to perform the request"
            )
        }
        return error
    }
}
