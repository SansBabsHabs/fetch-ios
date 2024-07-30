//
//  DetailedMealExtension.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/25/24.
//

import Foundation

extension DetailedMeal: Identifiable {
    var id: String { idMeal }
    var ingredients: [Ingredient] {
        var list: [Ingredient] = []
        
        if !String.isNilOrEmptyString(strIngredient1) {
            list.append(Ingredient(strIngredient: strIngredient1!, strMeasure: strMeasure1!))
        }
        
        if !String.isNilOrEmptyString(strIngredient2) {
            list.append(Ingredient(strIngredient: strIngredient2!, strMeasure: strMeasure2!))
        }
        
        if !String.isNilOrEmptyString(strIngredient3) {
            list.append(Ingredient(strIngredient: strIngredient3!, strMeasure: strMeasure3!))
        }
        
        if !String.isNilOrEmptyString(strIngredient4) {
            list.append(Ingredient(strIngredient: strIngredient4!, strMeasure: strMeasure4!))
        }
        
        if !String.isNilOrEmptyString(strIngredient5) {
            list.append(Ingredient(strIngredient: strIngredient5!, strMeasure: strMeasure5!))
        }
        
        if !String.isNilOrEmptyString(strIngredient6) {
            list.append(Ingredient(strIngredient: strIngredient6!, strMeasure: strMeasure6!))
        }
        
        if !String.isNilOrEmptyString(strIngredient7) {
            list.append(Ingredient(strIngredient: strIngredient7!, strMeasure: strMeasure7!))
        }
        
        if !String.isNilOrEmptyString(strIngredient8) {
            list.append(Ingredient(strIngredient: strIngredient8!, strMeasure: strMeasure8!))
        }
        
        if !String.isNilOrEmptyString(strIngredient9) {
            list.append(Ingredient(strIngredient: strIngredient9!, strMeasure: strMeasure9!))
        }
        
        if !String.isNilOrEmptyString(strIngredient10) {
            list.append(Ingredient(strIngredient: strIngredient10!, strMeasure: strMeasure10!))
        }
        
        if !String.isNilOrEmptyString(strIngredient11) {
            list.append(Ingredient(strIngredient: strIngredient11!, strMeasure: strMeasure11!))
        }
        
        if !String.isNilOrEmptyString(strIngredient12) {
            list.append(Ingredient(strIngredient: strIngredient12!, strMeasure: strMeasure12!))
        }
        
        if !String.isNilOrEmptyString(strIngredient13) {
            list.append(Ingredient(strIngredient: strIngredient13!, strMeasure: strMeasure13!))
        }
        
        if !String.isNilOrEmptyString(strIngredient14) {
            list.append(Ingredient(strIngredient: strIngredient14!, strMeasure: strMeasure14!))
        }
        
        if !String.isNilOrEmptyString(strIngredient15) {
            list.append(Ingredient(strIngredient: strIngredient15!, strMeasure: strMeasure15!))
        }
        
        if !String.isNilOrEmptyString(strIngredient16) {
            list.append(Ingredient(strIngredient: strIngredient16!, strMeasure: strMeasure16!))
        }
        
        if !String.isNilOrEmptyString(strIngredient17) {
            list.append(Ingredient(strIngredient: strIngredient17!, strMeasure: strMeasure17!))
        }
        
        if !String.isNilOrEmptyString(strIngredient18) {
            list.append(Ingredient(strIngredient: strIngredient18!, strMeasure: strMeasure18!))
        }
        
        if !String.isNilOrEmptyString(strIngredient19) {
            list.append(Ingredient(strIngredient: strIngredient19!, strMeasure: strMeasure19!))
        }
        
        if !String.isNilOrEmptyString(strIngredient20) {
            list.append(Ingredient(strIngredient: strIngredient20!, strMeasure: strMeasure20!))
        }
        
        return list
    }
    
    static var empty: DetailedMeal {
        DetailedMeal(idMeal: "", strMeal: "", strDrinkAlternate: "", strCategory: "", strArea: "", strInstructions: "", strMealThumb: "", strTags: "", strYoutube: "", strIngredient1: "", strIngredient2: "", strIngredient3: "", strIngredient4: "", strIngredient5: "", strIngredient6: "", strIngredient7: "", strIngredient8: "", strIngredient9: "", strIngredient10: "", strIngredient11: "", strIngredient12: "", strIngredient13: "", strIngredient14: "", strIngredient15: "", strIngredient16: "", strIngredient17: "", strIngredient18: "", strIngredient19: "", strIngredient20: "", strMeasure1: "", strMeasure2: "", strMeasure3: "", strMeasure4: "", strMeasure5: "", strMeasure6: "", strMeasure7: "", strMeasure8: "", strMeasure9: "", strMeasure10: "", strMeasure11: "", strMeasure12: "", strMeasure13: "", strMeasure14: "", strMeasure15: "", strMeasure16: "", strMeasure17: "", strMeasure18: "", strMeasure19: "", strMeasure20: "", strSource: "", strImageSource: "", strCreativeCommonsConfirmed: "", dateModified: "")
    }
    
    private func isNilOrEmptyString(_ string: String?) -> Bool {
        (string ?? "").isEmpty
    }
}
