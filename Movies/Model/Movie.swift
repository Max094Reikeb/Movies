//
//  Movie.swift
//  Movies
//
//  Created by Max094_Reikeb on 28/06/2021.
//

import Foundation
import SwiftUI

struct Movie: Hashable, Codable, Identifiable {
  
    var id: Int
    var name: String
    var genre: String
    var year: String
    var rating: Int
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
      
    private var imageName: String
    var poster: Image {
        Image(imageName)
    }
    var cover: Image {
        Image("\(imageName)-cover")
    }
      
    var posterURL: String {
        "\(urlPrefix)/\(imageName).jpg"
    }
    var coverURL: String {
        "\(urlPrefix)/\(imageName)-cover.jpg"
    }
      
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case recentlyAdded = "Recently Added"
        case topRated = "Top Rated"
        case upcoming = "Upcoming"
    }
}

let urlPrefix = "https://swift.appstudio.io/app/Movies"
