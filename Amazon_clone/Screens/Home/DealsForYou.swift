//
//  DealsForYou.swift
//  Amazon_clone
//
//  Created by yash chandat  on 12/08/25.
//

import SwiftUI

struct DealsForYou: View {
    let imageNames: [String]
    let discount: String
    var body: some View {
        HStack{
            Text("Deals for you")
                .font(.title3)
                .bold(true)
            Spacer()
        }.padding(.horizontal)
            LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())],spacing: 16) {
                ForEach (imageNames, id: \.self) { name in
                    VStack(spacing: 0) {
                        Image(name)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 180, height: 180)
                        
                        HStack {
                            Text("\(discount)")
                                .frame(width: 60, height: 23)
                                .background(Color(red: 139/255, green: 0/255, blue: 0/255))
                                .foregroundStyle(.white)
                                .font(.footnote)
                                .clipShape(RoundedRectangle(cornerRadius: 4))
                            
                            Text("Limited time deal")
                                .font(.caption)
                                .bold(true)
                                .foregroundStyle(Color(red: 139/255, green: 0/255, blue: 0/255))
                        }
                    }
                    .padding(.vertical)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                    .shadow(radius: 4)
                }
            }
            .padding()
            HStack {
                Text("See all deals")
                    .foregroundStyle(.blue)
                
                Spacer()
            }
            .padding(.horizontal, 16)
            
            Divider()
                .frame(height: 3)
                .overlay(Color(.systemGray5))
        }
    }


#Preview {
    DealsForYou(imageNames: ["smart watch","PS5 ","books","phone cover"], discount: "64% off")
}
