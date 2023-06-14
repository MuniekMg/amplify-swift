//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import XCTest
@testable import AWSPredictionsPlugin
import Amplify
import AWSRekognition

final class SearchFacesMyImageOutputErrorTestCase: XCTestCase {

    func test_searchFacesByImage_accessDenied() {
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

    func test_detectDocumentTextOutputError_imageTooLarge() throws {
        let underlyingServiceError = try ImageTooLargeException(
            httpResponse: .init(
                headers: .init(), body: .data(nil), statusCode: .badRequest
            )
        )
        let sdkError = SearchFacesByImageOutputError.imageTooLargeException(underlyingServiceError)
        let mappedError = ServiceErrorMapping.searchFacesByImage.map(sdkError)

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


    func test_detectDocumentTextOutputError_invalidImageFormat() throws {
        let underlyingServiceError = try InvalidImageFormatException(
            httpResponse: .init(
                headers: .init(), body: .data(nil), statusCode: .badRequest
            )
        )
        let sdkError = SearchFacesByImageOutputError.invalidImageFormatException(underlyingServiceError)
        let mappedError = ServiceErrorMapping.searchFacesByImage.map(sdkError)

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

    func test_detectDocumentTextOutputError_invalidParameterException() throws {
        let underlyingServiceError = try InvalidParameterException(
            httpResponse: .init(
                headers: .init(), body: .data(nil), statusCode: .badRequest
            )
        )
        let sdkError = SearchFacesByImageOutputError.invalidParameterException(underlyingServiceError)
        let mappedError = ServiceErrorMapping.searchFacesByImage.map(sdkError)

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
        let sdkError = SearchFacesByImageOutputError.invalidS3ObjectException(underlyingServiceError)
        let mappedError = ServiceErrorMapping.searchFacesByImage.map(sdkError)

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
        let sdkError = SearchFacesByImageOutputError.provisionedThroughputExceededException(underlyingServiceError)
        let mappedError = ServiceErrorMapping.searchFacesByImage.map(sdkError)

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

    func test_detectDocumentTextOutputError_resourceNotFound() throws {
        assertCatchVariations(
            for: .resourceNotFoundException(.init()),
            expecting: .resourceNotFound,
            label: "resourceNotFound"
        )
    }


    func test_detectDocumentTextOutputError_throttlingException() {
        assertCatchVariations(
            for: .throttlingException(.init()),
            expecting: .throttling,
            label: "throttling"
        )
    }


    func test_detectDocumentTextOutputError_unknown() {
        let underlyingError = SearchFacesByImageOutputError
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
        for sdkError: SearchFacesByImageOutputError,
        expecting expectedServiceError: PredictionsError.ServiceError,
        label: String
    ) {
        let predictionsError = ServiceErrorMapping.searchFacesByImage.map(sdkError)
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
