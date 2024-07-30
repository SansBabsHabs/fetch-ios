//
//  MealError.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/25/24.
//

import Foundation

enum MealError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}

extension MealError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .invalidURL:
            return NSLocalizedString("URL is invalid", comment: "Invalid URL")
        case .invalidResponse:
            return NSLocalizedString("Error occured in the server", comment: "Invalid HTTP Response")
        case .invalidData:
            return NSLocalizedString("Requested category does not exist. Please retry with a valid category.", comment: "Invalid Data")
        }
    }
}
