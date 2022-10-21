//
//  Poster.swift
//  Movies
//
//  Created by Max094_Reikeb on 28/06/2021.
//

import SwiftUI

struct Poster: View {

    var width: CGFloat
    var height: CGFloat
    var url: String
  
    var body: some View {
        AsyncImage(url: URL(string: url)) { image in
            image
                .resizable()
                .frame(width: width, height: height)
                .cornerRadius(10)
        } placeholder: {
            LoadingView(media: .poster, width: width, height: height)
                .frame(width: width, height: height)
        }
        .shadow(radius: 5)
    }
}

struct Poster_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        Poster(width: 200, height: 300, url: modelData.movies[0].posterURL)
    }
}
