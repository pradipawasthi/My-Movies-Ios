//
//  Home.swift
//  My-Movies-Ios
//
//  Created by Prakhar Parakh on 03/08/24.
//

import SwiftUI

struct Home: View {
  var body: some View {
    TabView {
      HomeView()
        .tabItem {
          Label("Home", systemImage: "house")
        }
      FavouritesView()
        .tabItem {
          Label("Favourites", systemImage: "heart")
        }
      SettingsView()
        .tabItem {
          Label("Settings", systemImage: "gear")
        }
    }.accentColor(.white)
      .onAppear {
        UITabBar.appearance().backgroundColor = .white.withAlphaComponent(0.15)
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
      }
  }
}

#Preview {
  Home()
}
