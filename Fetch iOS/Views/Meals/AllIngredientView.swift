//
//  AllIngredientView.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/27/24.
//

import SwiftUI

struct AllIngredientView: View {
    let ingredients: [Ingredient]
    
    var body: some View {
        VStack (alignment: .leading) {
            TitleText(text: "Ingredients")
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 130), spacing: 16, alignment: .top)], alignment: .center, spacing: 16) {
                ForEach(ingredients) { ingredient in
                    IngredientItemView(ingredient: ingredient)
                }
            }
        }
    }
}

#Preview {
    AllIngredientView(ingredients: [])
}
