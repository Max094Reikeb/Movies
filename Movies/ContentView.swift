//
//  ContentView.swift
//  Movies
//
//  Created by Max094_Reikeb on 28/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MovieHome()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
