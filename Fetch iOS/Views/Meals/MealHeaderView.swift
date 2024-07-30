//
//  MealHeaderView.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/27/24.
//

import SwiftUI

struct MealHeaderView: View {
    var detailedMeal: DetailedMeal
    var body: some View {
        fullBleedContent
    }
    
    var fullBleedContent: some View {
        VStack(spacing: 0) {
            AsyncImageWithPlaceholder(urlString: detailedMeal.strMealThumb,
                                      placeholderImage: "birthday.cake.fill",
                                      aspectRatio: .fill)
            .accessibility(hidden: true)
        }
    }
}

#Preview {
    MealHeaderView(detailedMeal: DetailedMeal.empty)
}
