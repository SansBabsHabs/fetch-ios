//
//  MealDetailView.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/25/24.
//

import SwiftUI

struct MealDetailView: View {
    let idMeal: String
    
    @State private var detailedMeals: DetailedMeals?
    @State private var errorWrapper: ErrorWrapper?
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                if (detailedMeals != nil) {
                    let meal = detailedMeals!.meals.first!
                    MealHeaderView(detailedMeal: meal)
                    InstructionsView(instructions: meal.strInstructions)
                        .padding()
                    AllIngredientView(ingredients: meal.ingredients)
                        .padding()
                    MoreMealInfoView(moreMealInfo: MoreMealInfo(strYoutube: meal.strYoutube,
                                                                strSource: meal.strSource,
                                                                strImageSource: meal.strImageSource))
                    .padding()
                } else {
                    OopsMessage()
                }
            }
        }
        .task {
            do {
                detailedMeals = try await APIService.instance.getMealById(id: idMeal)
            } catch {
                errorWrapper = ErrorWrapper(error: error, guidance: "Meal with id: \(idMeal) does not exist.")
            }
        }
        .sheet(item: $errorWrapper) {

        } content: { wrapper in
            ErrorView(errorWrapper: wrapper)
        }
    }
}

#Preview {
    MealDetailView(idMeal: "53040")
}
