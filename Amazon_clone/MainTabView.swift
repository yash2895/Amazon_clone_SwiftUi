//
//  MainTabView.swift
//  Amazon_clone
//
//  Created by yash chandat  on 10/08/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        ZStack {
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

#Preview {
    MainTabView()
}
