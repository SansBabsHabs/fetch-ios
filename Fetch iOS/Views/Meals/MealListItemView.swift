//
//  MealListItemView.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/25/24.
//

import SwiftUI

struct MealListItemView: View, Identifiable {
    var id: UUID = UUID()
    let meal: Meal
    
    var body: some View {
        HStack {
            let imageClipShape = RoundedRectangle(cornerRadius: Constants.CORNER_RADIUS, style: .continuous)
            AsyncImageWithPlaceholder(urlString: meal.strMealThumb,
                                      placeholderImage: "photo",
                                      aspectRatio: .fit)
            .clipShape(imageClipShape)
            .frame(width: 50, height: 50)
            Text(meal.strMeal)
        }
    }
}

#Preview {
    MealListItemView(meal: Meal.sample)
}
