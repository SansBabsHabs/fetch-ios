//
//  AsyncImage+Placeholder.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/27/24.
//

import SwiftUI

struct AsyncImageWithPlaceholder: View {
    let urlString: String
    let placeholderImage: String
    let aspectRatio: ContentMode
    
    var body: some View {
        AsyncImage(url: URL(string: urlString)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: aspectRatio)
        } placeholder: {
            Image(systemName: placeholderImage)
                .resizable()
                .aspectRatio(contentMode: aspectRatio)
        }
    }
}

#Preview {
    AsyncImageWithPlaceholder(urlString: "",
                              placeholderImage: "birthday.cake.fill",
                              aspectRatio: .fill)
}
