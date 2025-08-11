//
//  MainTabView.swift
//  Amazon_clone
//
//  Created by yash chandat  on 10/08/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .bold()
                        .foregroundStyle(.black)
                    Text("Search or ask a question")
                        .foregroundStyle(.gray)
                    Spacer()
                    Image(systemName: "camera")
                        .foregroundStyle(.black)
                        .bold()
                        .padding(.horizontal,4)
                    
                    Image(systemName: "microphone")
                        .foregroundStyle(.black)
                        .bold()
                        .padding(.horizontal,6)
                }
                .padding(8)
                .background(Color.white)
                .cornerRadius(8)
                
                Spacer()
                
                Image(systemName: "qrcode")
                    .resizable()
                    .frame(width: 24, height:24)
                    .foregroundStyle(.black)
                //.foregroundStyle(.white)
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
            .background(gradient)
            .foregroundColor(.white)
            
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home",systemImage:"house")
                    }
                YouView()
                    .tabItem {
                        Label("You",systemImage:"person")
                    }
                MoreView()
                    .tabItem {
                        Label("More",systemImage:"square.2.layers.3d")
                    }
                CartView()
                    .tabItem {
                        Label("Cart",systemImage:"cart.fill")
                    }
                MenuView()
                    .tabItem {
                        Label("Menu",systemImage:"line.3.horizontal")
                    }
            }
        }
    }
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255
        let g = Double((rgb >> 8) & 0xFF) / 255
        let b = Double(rgb & 0xFF) / 255
        
        self.init(red: r, green: g, blue: b)
    }
}

let gradient = LinearGradient(
    gradient: Gradient(colors: [
        Color(hex: "#A7E9D1"),
        Color(hex: "#89D9E7")
    ]),
    startPoint: .topLeading,
    endPoint: .bottomTrailing
)


#Preview {
    MainTabView()
}
