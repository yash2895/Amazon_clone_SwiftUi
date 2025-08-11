//
//  HomeView.swift
//  Amazon_clone
//
//  Created by yash chandat  on 10/08/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            FirstListingScrollView(imageNames: ["laptop","book","monitor","keyboard","electronics", "skincare"])
                ListingImageCarouselView(
                    imageNames: ["listinghomepage1", "listinghomepage2", "listinghomepage3"]
                )
                .frame(height: 250)
        }
    }
}



#Preview {
    HomeView()
}

//ForEach (viewModel.listing, id: \.self) {listing in NavigationLink(value: listing) {
//    ListingItemVIew(listing: listing)
//            .frame(height: 400)
//            .clipShape(RoundedRectangle(cornerRadius: 32))
//    }
//}
