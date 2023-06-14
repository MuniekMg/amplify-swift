//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import XCTest
@testable import AWSPredictionsPlugin
import Amplify
import AWSComprehend

final class AWSPredictionsPlugin_InterpretTestCase: XCTestCase {
    var mockComprehend: MockComprehendBehavior!
    var plugin: AWSPredictionsPlugin!

    override func setUp() async throws {
        let plugin = AWSPredictionsPlugin()
        let configurationJSON = """
        {
            "defaultRegion": "us-east-1"
        }
        """

        let configuration = try JSONDecoder().decode(
            PredictionsPluginConfiguration.self,
            from: Data(configurationJSON.utf8)
        )

        mockComprehend = MockComprehendBehavior()
        plugin.predictionsService = AWSPredictionsService(
            identifier: "",
            awsTranslate: MockTranslateBehavior(),
            awsRekognition: MockRekognitionBehavior(),
            awsTextract: MockTextractBehavior(),
            awsComprehend: mockComprehend,
            awsPolly: MockPollyBehavior(),
            awsTranscribeStreaming: MockTranscribeBehavior(),
            configuration: configuration
        )

        let coreMLConfig: JSONValue = ["defaultRegion": "us-east-1"]
        plugin.coreMLService = try CoreMLPredictionService(
            configuration: coreMLConfig
        )
        self.plugin = plugin
    }

    func test_interpret_online() async throws {
        let mockDominantLanguage = DetectDominantLanguageOutputResponse(
            languages: [.init(languageCode: "en", score: 0.5)]
        )
        mockComprehend.languageResponse = { _ in mockDominantLanguage }
        mockComprehend.sentimentResponse = { _ in .init() }
        mockComprehend.keyPhrasesResponse = { _ in .init() }
        mockComprehend.syntaxResponse = { _ in .init() }
        mockComprehend.entitiesResponse = { _ in .init() }

        let result = try await plugin.interpret(
            text: "some text",
            options: .init(defaultNetworkPolicy: .online)
        )
        XCTAssertEqual(result.language?.languageCode, .english, "Dominant language should match")
    }
}
