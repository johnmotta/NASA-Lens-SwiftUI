//
//  NetworkError.swift
//  NASA Lens SwiftUI
//
//  Created by John Motta on 17/10/24.
//

import Foundation

enum NetworkError: Error {
    case invalidURL(String)
    case noData
    case invalidResponse
    case decodingError(Error)
    case apiError(Int, String)
    case networkFailure(Error)
    
    var errorDescription: String? {
        switch self {
        case .invalidURL(let url):
            return "URL inválida -> \(url)."
        case .noData:
            return "Dados não recebidos da API."
        case .invalidResponse:
            return "Resposta inválida da API."
        case .decodingError(let error):
            return "Decodificação falhou: \(error.localizedDescription)"
        case .networkFailure(let error):
            return "Falha na rede: \(error.localizedDescription)"
        case .apiError(let status, let error):
            return "Error na API. Status code: \(status), error: \(error)"
        }
    }
}
