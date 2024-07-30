//
//  Meal.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/24/24.
//

import Foundation


struct Meals: Codable {
    let meals: [Meal]
    
    init(meals: [Meal]) {
        self.meals = meals
    }
    
    static var empty: Meals {
        Meals(meals: [Meal]())
    }
}

//Source: https://themealdb.com/api/json/v1/1/filter.php?c=Dessert
struct Meal: Codable, Identifiable, Comparable {
    static func < (lhs: Meal, rhs: Meal) -> Bool {
        lhs.strMeal < rhs.strMeal
    }
    
    let idMeal: String
    let strMeal: String
    let strMealThumb: String
    
    var id: String { idMeal }
    
    static var sample: Meal {
        Meal(idMeal: "0", strMeal: "Meal Sample", strMealThumb: "")
    }
    
    func matches(_ string: String) -> Bool {
        string.isEmpty ||
        strMeal.localizedCaseInsensitiveContains(string)
    }
}

