//
//  TitleText.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/27/24.
//

import SwiftUI

struct TitleText: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .bold()
    }
}

#Preview {
    TitleText(text: "Welcome")
}
