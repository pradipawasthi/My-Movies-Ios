//
//  ContentView.swift
//  My-Movies-Ios
//
//  Created by Pradip Awasthi on 03/08/24.
//

import SwiftUI
import SwiftData

struct ContentView_2: View {
    var body: some View {
        VStack {
            RoundedTrapezoid(topWidth: 180, bottomWidth: 250)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.red, .orange]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 250, height: 300)
                .padding()
                .overlay {
                  Image("temp")
                }

            RoundedTrapezoid(topWidth: 200, bottomWidth: 180)
                .stroke(Color.blue, lineWidth: 5)
                .frame(width: 250, height: 300)
                .padding()
                .overlay {
                  Image("temp")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 300)
                    .mask(
                      RoundedTrapezoid(topWidth: 200, bottomWidth: 180)
                    )
                }
        }
    }
}




#Preview {
  ContentView_2()
}
