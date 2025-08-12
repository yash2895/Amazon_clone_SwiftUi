//
//  ListingImageCarouselVIew.swift
//  Amazon_clone
//
//  Created by yash chandat  on 11/08/25.
//

import SwiftUI

struct ListingImageCarouselView: View {
    let imageNames: [String]
    var body: some View {
        TabView {
            ForEach(imageNames,id: \.self) { name in
                Image(name)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 250)
                    .clipped()
            }
        }
        .frame(height: 250)
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(imageNames: ["listinghomepage1", "listinghomepage2", "listinghomepage3"])
}
