//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import XCTest
@testable import AWSPredictionsPlugin
import Amplify
import AWSTextract

final class DetectDocumentTextOutputErrorTestCase: XCTestCase {

    func test_detectDocumentTextOutputError_accessDenied() {
        assertCatchVariations(
            for: .accessDeniedException(.init()),
            expecting: .accessDenied,
            label: "accessDenied"
        )
    }

    func test_detectDocumentTextOutputError_internalServerError() {
        assertCatchVariations(
            for: .internalServerError(.init()),
            expecting: .internalServerError,
            label: "internalServerError"
        )
    }



    func test_detectDocumentTextOutputError_invalidParameterException() throws {
        let underlyingServiceError = try InvalidParameterException(
            httpResponse: .init(
                headers: .init(), body: .data(nil), statusCode: .badRequest
            )
        )
        let sdkError = DetectDocumentTextOutputError.invalidParameterException(underlyingServiceError)
        let mappedError = ServiceErrorMapping.detectDocumentText.map(sdkError)

        do { throw mappedError }
        catch let error as PredictionsError {
            guard case .service(let serviceError) = error else {
                return XCTFail("Expected PredictionsError.service")
            }
            XCTAssertEqual(
                serviceError.httpStatusCode,
                underlyingServiceError._statusCode?.rawValue
            )
        } catch {
            XCTFail("Expected PredictionsError")
        }
    }

    func test_detectDocumentTextOutputError_invalidS3Object() throws {
        let underlyingServiceError = try InvalidS3ObjectException(
            httpResponse: .init(
                headers: .init(), body: .data(nil), statusCode: .badRequest
            )
        )
        let sdkError = DetectDocumentTextOutputError.invalidS3ObjectException(underlyingServiceError)
        let mappedError = ServiceErrorMapping.detectDocumentText.map(sdkError)

        do { throw mappedError }
        catch let error as PredictionsError {
            guard case .service(let serviceError) = error else {
                return XCTFail("Expected PredictionsError.service")
            }
            XCTAssertEqual(
                serviceError.httpStatusCode,
                underlyingServiceError._statusCode?.rawValue
            )
        } catch {
            XCTFail("Expected PredictionsError")
        }
    }

    func test_detectDocumentTextOutputError_throughputExceeded() throws {
        let underlyingServiceError = try ProvisionedThroughputExceededException(
            httpResponse: .init(
                headers: .init(), body: .data(nil), statusCode: .badRequest
            )
        )
        let sdkError = DetectDocumentTextOutputError.provisionedThroughputExceededException(underlyingServiceError)
        let mappedError = ServiceErrorMapping.detectDocumentText.map(sdkError)

        do { throw mappedError }
        catch let error as PredictionsError {
            guard case .service(let serviceError) = error else {
                return XCTFail("Expected PredictionsError.service")
            }
            XCTAssertEqual(
                serviceError.httpStatusCode,
                underlyingServiceError._statusCode?.rawValue
            )
        } catch {
            XCTFail("Expected PredictionsError")
        }
    }

    func test_detectDocumentTextOutputError_badDocument() throws {
        let underlyingServiceError = try BadDocumentException(
            httpResponse: .init(
                headers: .init(), body: .data(nil), statusCode: .badRequest
            )
        )
        let sdkError = DetectDocumentTextOutputError.badDocumentException(underlyingServiceError)
        let mappedError = ServiceErrorMapping.detectDocumentText.map(sdkError)

        do { throw mappedError }
        catch let error as PredictionsError {
            guard case .service(let serviceError) = error else {
                return XCTFail("Expected PredictionsError.service")
            }
            XCTAssertEqual(
                serviceError.httpStatusCode,
                underlyingServiceError._statusCode?.rawValue
            )
        } catch {
            XCTFail("Expected PredictionsError")
        }
    }

    func test_detectDocumentTextOutputError_documentTooLarge() throws {
        let underlyingServiceError = try DocumentTooLargeException(
            httpResponse: .init(
                headers: .init(), body: .data(nil), statusCode: .badRequest
            )
        )
        let sdkError = DetectDocumentTextOutputError.documentTooLargeException(underlyingServiceError)
        let mappedError = ServiceErrorMapping.detectDocumentText.map(sdkError)

        do { throw mappedError }
        catch let error as PredictionsError {
            guard case .service(let serviceError) = error else {
                return XCTFail("Expected PredictionsError.service")
            }
            XCTAssertEqual(
                serviceError.httpStatusCode,
                underlyingServiceError._statusCode?.rawValue
            )
        } catch {
            XCTFail("Expected PredictionsError")
        }
    }

    func test_detectDocumentTextOutputError_unsupportedDocument() throws {
        let underlyingServiceError = try UnsupportedDocumentException(
            httpResponse: .init(
                headers: .init(), body: .data(nil), statusCode: .badRequest
            )
        )
        let sdkError = DetectDocumentTextOutputError.unsupportedDocumentException(underlyingServiceError)
        let mappedError = ServiceErrorMapping.detectDocumentText.map(sdkError)

        do { throw mappedError }
        catch let error as PredictionsError {
            guard case .service(let serviceError) = error else {
                return XCTFail("Expected PredictionsError.service")
            }
            XCTAssertEqual(
                serviceError.httpStatusCode,
                underlyingServiceError._statusCode?.rawValue
            )
        } catch {
            XCTFail("Expected PredictionsError")
        }
    }

    func test_detectDocumentTextOutputError_throttlingException() {
        assertCatchVariations(
            for: .throttlingException(.init()),
            expecting: .throttling,
            label: "throttling"
        )
    }


    func test_detectDocumentTextOutputError_unknown() {
        let underlyingError = DetectDocumentTextOutputError
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
    }


    private func assertCatchVariations(
        for sdkError: DetectDocumentTextOutputError,
        expecting expectedServiceError: PredictionsError.ServiceError,
        label: String
    ) {
        let predictionsError = ServiceErrorMapping.detectDocumentText.map(sdkError)
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
