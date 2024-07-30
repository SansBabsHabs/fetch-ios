//
//  IngredientItemView.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/27/24.
//

import SwiftUI

struct IngredientItemView: View {
    let ingredient: Ingredient
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            AsyncImageWithPlaceholder(urlString: APIService.instance.getIngredientThumbnailUrl(ingredient: ingredient.strIngredient),
                                      placeholderImage: "photo",
                                      aspectRatio: .fit)
            .padding(.bottom)
            Text(ingredient.strIngredient)
            Text(ingredient.strMeasure)
                .font(.caption)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .padding()
        .cornerRadius(Constants.CORNER_RADIUS)
    }
}

#Preview {
    let ingredient = Ingredient(strIngredient: "TakeOutBag", strMeasure: "3 oz")
    return IngredientItemView(ingredient: ingredient)
}
