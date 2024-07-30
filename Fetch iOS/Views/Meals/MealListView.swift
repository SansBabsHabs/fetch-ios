//
//  MealListView.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/25/24.
//

import SwiftUI

struct MealListView: View {
    @EnvironmentObject private var mealViewModel: MealViewModel
    
    @State private var errorWrapper: ErrorWrapper?
    
    var listedMeals: [Meal] {
        let meals = mealViewModel.meals
        if (meals != nil) {
            return meals!.meals.filter { $0.matches(mealViewModel.searchText) }
                .sorted()
        }
            return []
    }
    
    var body: some View {
        let meals = mealViewModel.meals
        ZStack {
            VStack (alignment: .center) {
                if (meals != nil) {
                    NavigationStack {
                        List(listedMeals) { meal in
                            NavigationLink(destination: MealDetailView(idMeal: meal.id)
                                .navigationTitle(meal.strMeal)) {
                                    MealListItemView(meal: meal)
                                }
                        }
                        .navigationTitle(Text("Desserts", comment: "Title of the section showing the list of available desserts"))
                        .searchable(text: $mealViewModel.searchText) {
                            ForEach(mealViewModel.searchSuggestions) { meal in
                                Text(meal.strMeal).searchCompletion(meal.strMeal)
                            }
                        }
                    }
                    .listStyle(.automatic)
                    .refreshable {
                        await mealViewModel.refresh()
                    }
                } else {
                    OopsMessage()
                }
            }
            .task {
                do {
                    mealViewModel.meals = try await APIService.instance.getMealsByCategory(category: "Dessert")
                } catch {
                    errorWrapper = ErrorWrapper(error: error, guidance: "Please try again later.")
                }
            }
            .sheet(item: $errorWrapper) {

            } content: { wrapper in
                ErrorView(errorWrapper: wrapper)
            }
        }
    }
}
    

#Preview {
    MealListView()
        .environmentObject(MealViewModel())
}
