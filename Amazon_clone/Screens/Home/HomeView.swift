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
            
            DeliveTo()
            
            FirstListingScrollView(imageNames: ["laptop","book","monitor","keyboard","electronics", "skincare"])
            
            ListingImageCarouselView(
                imageNames: ["listinghomepage1", "listinghomepage2", "listinghomepage3"]
            )
            KeepShopingFor(imageNames: ["face wash","lipstick","perfume","shampoo"])
                .frame(height: 250)
            
            Sponsored()
            
            DealsForYou(imageNames: ["smart watch","PS5 ","books","phone cover"], discount: "64% off")
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
