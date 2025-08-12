//
//  KeepShopingFor.swift
//  Amazon_clone
//
//  Created by yash chandat  on 12/08/25.
//

import SwiftUI

struct KeepShopingFor: View {
    let imageNames: [String]
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach (imageNames, id: \.self) { name in
                    VStack(spacing: 0) {
                        Text("Keep shopping for ")
                            .font(.caption)
                        +
                        Text(name).bold()
                            .font(.footnote)
                        Image(name)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 85)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .shadow(radius: 4)
                    .frame(width: 130, height: 135, alignment: .center)

                }
            }
        }
    }
}

#Preview {
    KeepShopingFor(imageNames: ["face wash","lipstick","perfume","shampoo"])
}
