//
//  MoreMealInfoView.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/27/24.
//

import SwiftUI

struct MoreMealInfoView: View {
    let moreMealInfo: MoreMealInfo
    var body: some View {
        if !String.isNilOrEmptyString(moreMealInfo.strSource) &&
            !String.isNilOrEmptyString(moreMealInfo.strYoutube) {
            VStack (alignment: .leading) {
                TitleText(text: "More Info")
                MoreMealInfoItemView(urlString: "",
                                     text: "View on YouTube",
                                     link: moreMealInfo.strYoutube)
                MoreMealInfoItemView(urlString: moreMealInfo.strImageSource,
                                     text: "View Article",
                                     link: moreMealInfo.strSource)
            }
        }
    }
}
