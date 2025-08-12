//
//  Sponsored.swift
//  Amazon_clone
//
//  Created by yash chandat  on 12/08/25.
//

import SwiftUI

struct Sponsored: View {
    var body: some View {
        Image("sponsored")
            .resizable()
            .scaledToFit()
            .frame(width: .infinity)
        HStack (spacing: 2){

            Spacer()
            
            Text("sponsored")
                .foregroundStyle(.secondary)
                .font(.caption)
            
            Image(systemName: "info.circle")
                .font(.caption)
                .foregroundStyle(.secondary)
        }.padding(.trailing, 6)
        
        Divider()
            .frame(height: 3)
            .overlay(Color(.systemGray5))
    }
}

#Preview {
    Sponsored()
}
