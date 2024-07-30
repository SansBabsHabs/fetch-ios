//
//  MealViewModel.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/30/24.
//

import Foundation

class MealViewModel: ObservableObject {
    @Published var meals: Meals?
    @Published var searchText: String = ""
    
    func refresh() async {
        try? await Task.sleep(nanoseconds: 1_000_000)
    }
    
    var searchSuggestions : [Meal] {
        if meals != nil {
            return meals!.meals.filter {
                $0.strMeal.localizedCaseInsensitiveContains(searchText) &&
                $0.strMeal.localizedCaseInsensitiveCompare(searchText) != .orderedSame
            }
        }
        
        return []
    }
}
