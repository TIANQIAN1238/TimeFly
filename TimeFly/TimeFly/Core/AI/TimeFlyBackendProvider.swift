//
//  TimeFlyBackendProvider.swift
//  TimeFly
//

import Foundation

final class TimeFlyBackendProvider {
    private let token: String
    private let endpoint: String

    init(token: String, endpoint: String = "https://api.timefly.app") {
        self.token = token
        self.endpoint = endpoint
    }

    func transcribeScreenshots(_ screenshots: [Screenshot], batchStartTime: Date, batchId: Int64?) async throws -> (observations: [Observation], log: LLMCall) {
        fatalError("TimeFlyBackendProvider not implemented yet")
    }

    func generateActivityCards(observations: [Observation], context: ActivityGenerationContext, batchId: Int64?) async throws -> (cards: [ActivityCardData], log: LLMCall) {
        fatalError("TimeFlyBackendProvider not implemented yet")
    }

    func generateText(prompt: String) async throws -> (text: String, log: LLMCall) {
        throw NSError(
            domain: "TimeFlyBackend",
            code: -1,
            userInfo: [NSLocalizedDescriptionKey: "Text generation is not yet supported with TimeFly Backend. Please configure Gemini, Ollama, or ChatGPT/Claude CLI in Settings."]
        )
    }
}
