//
//  Fetch_iOSApp.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/24/24.
//

import SwiftUI

@main
struct Fetch_iOSApp: App {
    @StateObject private var mealViewModel: MealViewModel = MealViewModel()

    var body: some Scene {
        WindowGroup {
            MealListView()
                .environmentObject(mealViewModel)
        }
    }
}
