//
//  MovieGrid.swift
//  Movies
//
//  Created by Max094_Reikeb on 28/06/2021.
//

import SwiftUI

struct MovieGrid: View {

    var categoryName: String
    var items: [Movie]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
  
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(items) { movie in
                    NavigationLink(destination: MovieDetail(movie: movie)) {
                        PosterTitle(movie: movie)
                    }
                }
                .padding(.top, 10)
            }
            .padding()
        }
        .navigationTitle(categoryName)
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct MovieGrid_Previews: PreviewProvider {
    static var movies = ModelData().movies
    static var previews: some View {
        MovieGrid(
            categoryName: movies[0].category.rawValue,
            items: Array(movies.prefix(6))
        )
    }
}
