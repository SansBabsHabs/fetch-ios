//
//  Ingredient.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/25/24.
//

import Foundation

struct Ingredient: Identifiable {
    var id: UUID = UUID()
    let strIngredient: String
    let strMeasure: String
}
