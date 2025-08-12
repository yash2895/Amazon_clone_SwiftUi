//
//  DeliveTo.swift
//  Amazon_clone
//
//  Created by yash chandat  on 12/08/25.
//

import SwiftUI

struct DeliveTo: View {
    var body: some View {
        HStack {
            Image(systemName: "mappin")
                .font(.title)
            Button {
                
            } label: {
                Text("Deliver to ")
                +
                Text("Yash")
                    .bold(true)
                +
                Text("  632014")
                
            Image(systemName: "chevron.down")
                    .font(.caption)
                
            Spacer()
            }
            .font(.title3)
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, minHeight: 45)
        .foregroundStyle(.black)
        .background(Color(red: 159/255, green: 216/255, blue: 223/255))
    }
}




#Preview {
    DeliveTo()
}
