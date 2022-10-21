//
//  MoviesApp.swift
//  Movies
//
//  Created by Max094_Reikeb on 28/06/2021.
//

import SwiftUI

@main
struct MoviesApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
