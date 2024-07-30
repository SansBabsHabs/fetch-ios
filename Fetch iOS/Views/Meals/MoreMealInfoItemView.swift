//
//  MoreMealInfoItemView.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/27/24.
//

import SwiftUI

struct MoreMealInfoItemView: View {
    let urlString: String?
    let text: String
    let link: String?
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                if !String.isNilOrEmptyString(link) {
                    let imageClipShape = RoundedRectangle(cornerRadius: Constants.CORNER_RADIUS, style: .continuous)
                    AsyncImageWithPlaceholder(urlString: urlString ?? "",
                                              placeholderImage: "arrow.up.forward.app",
                                              aspectRatio: .fit)
                    .clipShape(imageClipShape)
                    .frame(width: Constants.FRAME_SIZE_25, height: Constants.FRAME_SIZE_25)
                    Link(destination: URL(string: link!)!) {
                        Text(text)
                    }
                }
            }
        }
    }
}

#Preview {
    MoreMealInfoItemView(urlString: "a", text: "View on YouTube", link: "k")
}
