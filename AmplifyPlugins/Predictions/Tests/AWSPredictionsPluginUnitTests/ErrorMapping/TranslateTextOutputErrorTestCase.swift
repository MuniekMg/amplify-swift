//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import XCTest
@testable import AWSPredictionsPlugin
import Amplify
import AWSTranslate

final class TranslateTextOutputErrorTestCase: XCTestCase {

    func test_translateText_lowConfidence() {
        assertCatchVariations(
            for: .detectedLanguageLowConfidenceException(.init()),
            expecting: .detectedLanguageLowConfidence,
            label: "lowConfidence"
        )
    }

    func test_translateText_internalServer() {
        assertCatchVariations(
            for: .internalServerException(.init()),
            expecting: .internalServerError,
            label: "internalServer"
        )
    }

    func test_translateText_invalidRequest() {
        assertCatchVariations(
            for: .invalidRequestException(.init()),
            expecting: .invalidRequest,
            label: "invalidRequest"
        )
    }

    func test_translateText_resourceNotFound() {
        assertCatchVariations(
            for: .resourceNotFoundException(.init()),
            expecting: .resourceNotFound,
            label: "resourceNotFound"
        )
    }

    func test_translateText_textSizeLimitExceeded() {
        assertCatchVariations(
            for: .textSizeLimitExceededException(.init()),
            expecting: .textSizeLimitExceeded,
            label: "textSizeLimitExceeded"
        )
    }

    func test_translateText_tooManyRequests() {
        assertCatchVariations(
            for: .tooManyRequestsException(.init()),
            expecting: .throttling,
            label: "throttling"
        )
    }

    func test_translateText_unsupportedLanguagePair() {
        assertCatchVariations(
            for: .unsupportedLanguagePairException(.init()),
            expecting: .unsupportedLanguagePair,
            label: "unsupportedLanguagePair"
        )
    }

    func test_translateText_unknown() {
        let underlyingError = TranslateTextOutputError
            .unknown(.init(httpResponse: .init(body: .none, statusCode: .unauthorized)))

        assertCatchVariations(
            for: underlyingError,
            expecting: .init(
                description: "An unknown service error occurred",
                recoverySuggestion: "",
                underlyingError: underlyingError
            ),
            label: "unknownServiceError"
        )

        assertCatchVariations(
            for: .detectedLanguageLowConfidenceException(.init()),
            expecting: .detectedLanguageLowConfidence,
            label: "lowConfidence"
        )
    }

    private func assertCatchVariations(
        for sdkError: TranslateTextOutputError,
        expecting expectedServiceError: PredictionsError.ServiceError,
        label: String
    ) {
        let predictionsError = ServiceErrorMapping.translateText.map(sdkError)
        let unexpected: (Error) -> String = {
            "Expected PredictionsError.service(.\(label), received \($0)"
        }

        // catch variation 1.
        do { throw predictionsError }
        catch PredictionsError.service(expectedServiceError) {}
        catch {
            XCTFail(unexpected(error))
        }

        // catch variation 2.
        do { throw predictionsError }
        catch let error as PredictionsError {
            guard case .service(expectedServiceError) = error else {
                return XCTFail(unexpected(error))
            }
        } catch {
            XCTFail(unexpected(error))
        }

        // catch variation 3.
        do { throw predictionsError }
        catch {
            guard let error = error as? PredictionsError,
                  case .service(expectedServiceError) = error
            else {
                return XCTFail(unexpected(error))
            }
        }
    }
}
