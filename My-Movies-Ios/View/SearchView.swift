//
//  SearchView.swift
//  My-Movies-Ios
//
//  Created by Prakhar Parakh on 03/08/24.
//

import SwiftUI

struct SearchView: View {
  @State var searchText = ""
  var body: some View {
    HStack {
      Image(systemName: "magnifyingglass")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 16, height: 16)
        .foregroundStyle(.white.opacity(0.6))
      TextField("", text: $searchText, prompt: Text("Search").foregroundColor(Color.white.opacity(0.6)))
        .foregroundStyle(Color.white.opacity(0.6))
      Image(systemName: "mic")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 11, height: 18)
        .foregroundStyle(.white.opacity(0.6))
    }
    .padding(.horizontal, 16)
    .padding(.vertical, 12)
    .background(
      RoundedRectangle(cornerRadius: 10)
        .foregroundStyle(Color.init(hex: "767680").opacity(0.15))
    )
    .padding(.horizontal)
  }
}

#Preview {
  SearchView()
}
