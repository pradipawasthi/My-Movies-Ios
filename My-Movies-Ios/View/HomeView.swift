//
//  HomeView.swift
//  My-Movies-Ios
//
//  Created by Prakhar Parakh on 03/08/24.
//

import SwiftUI

struct HomeView: View {
  @State var searchText = ""

  var body: some View {
    ZStack {
      Color.background
        .ignoresSafeArea()
      Circle()
        .frame(width: 250, height: 200)
        .offset(x: -UIScreen.main.bounds.width / 2, y: -UIScreen.main.bounds.height / 2)
        .foregroundStyle(Color.green100.opacity(0.5))
        .blur(radius: 50)
      
      Circle()
        .frame(width: 350, height: 300)
        .offset(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 4 - 200)
        .foregroundStyle(Color.pink100.opacity(0.4))
        .blur(radius: 50)
      
      Circle()
        .frame(width: 250, height: 300)
        .offset(x: -UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)
        .foregroundStyle(Color.green100.opacity(0.4))
        .blur(radius: 50)
      
      ScrollView(showsIndicators: false) {
        LazyVStack {
          
        }
      }
    }
  }
}

#Preview {
  HomeView()
}
