//
//  FirstListingScrollView.swift
//  Amazon_clone
//
//  Created by yash chandat  on 11/08/25.
//

import SwiftUI


struct FirstListingScrollView: View {
    let imageNames: [String]
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack {
                ForEach (imageNames, id: \.self) { name in
                    VStack(spacing: 0) {
                        Image(name)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                        Text(name)
                            .font(.caption)
                    }
                    .frame(width: 65, height: 80, alignment: .center)
                }
            }
        }
    }
}

#Preview {
    FirstListingScrollView(imageNames: ["laptop","electronics","monitor","baby care"])
}
