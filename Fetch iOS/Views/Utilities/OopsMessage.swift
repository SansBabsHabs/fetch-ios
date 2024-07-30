//
//  OopsMessage.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/27/24.
//

import SwiftUI


///View to display when error occurs
struct OopsMessage: View {
    var body: some View {
        Text("Oops! Nothing to display!")
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

#Preview {
    OopsMessage()
}
