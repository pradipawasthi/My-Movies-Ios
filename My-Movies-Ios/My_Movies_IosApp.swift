//
//  My_Movies_IosApp.swift
//  My-Movies-Ios
//
//  Created by Pradip Awasthi on 03/08/24.
//

import SwiftUI
import SwiftData

@main
struct My_Movies_IosApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
          IntroView()
        }
        .modelContainer(sharedModelContainer)
    }
}
