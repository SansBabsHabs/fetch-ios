//
//  APIService.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/25/24.
//

import Foundation
import SwiftUI

struct APIService {
    static let instance = APIService()
    
    func getMealsByCategory(category: String) async throws -> Meals {
        let endpoint = "https://themealdb.com/api/json/v1/1/filter.php?c=" + category.trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard let url = URL(string: endpoint) else {
            throw MealError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw MealError.invalidResponse
        }
        
        guard let meals: Meals = try JsonUtil.load(data: data) else {
            throw MealError.invalidData
        }
        
        return meals
    }
    
    func getMealById(id: String) async throws -> DetailedMeals {
        let endpoint = "https://themealdb.com/api/json/v1/1/lookup.php?i=" + id.trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard let url = URL(string: endpoint) else {
            throw MealError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw MealError.invalidResponse
        }
        
        guard let meals: DetailedMeals = try JsonUtil.load(data: data) else {
            throw MealError.invalidData
        }
        
        return meals
    }
    
    func getIngredientThumbnailUrl(ingredient: String) -> String {
        let ingredient = ingredient.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
        return "https://www.themealdb.com/images/ingredients/" + ingredient.trimmingCharacters(in: .whitespacesAndNewlines) + ".png"
    }
    
    func getSmallIngredientThumbnailUrl(ingredient: String) -> String {
        let ingredient = ingredient.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
        return "https://www.themealdb.com/images/ingredients/" + ingredient.trimmingCharacters(in: .whitespacesAndNewlines) + "-Small.png"
    }
}
