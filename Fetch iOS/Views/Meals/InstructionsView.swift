//
//  InstructionsView.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/27/24.
//

import SwiftUI

struct InstructionsView: View {
    let instructions: String?
    var body: some View {
        if !String.isNilOrEmptyString(instructions) {
            VStack (alignment: .leading) {
                TitleText(text: "Instructions")
                Text(instructions!)
            }
        }
    }
}

#Preview {
    InstructionsView(instructions: "Welcome to the Fetch iOS Apprenticeship")
}
