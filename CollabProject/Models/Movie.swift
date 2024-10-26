//
//  MovieModel.swift
//  CollabProject
//
//  Created by Apple on 25.10.24.
//

import Foundation
import UIKit

struct Movie {
    var name: String
    var imdbRating: Double
    var isFavorite = false
    var isNowShowing = false
    var isPopular = false
    var cast: [Cast]
    let movieImage: UIImage?
    let description: String
    let length: String
    let language: String
    let pgRating: String
    let genre: [Genre]
    
    struct Cast {
        let name: String
        let image: UIImage?
    }
    
   enum Genre: String {
            case action = "Action"
            case drama = "Drama"
            case comedy = "Comedy"
            case sciFi = "Sci-Fi"
            case thriller = "Thriller"
            case romance = "Romance"
            case adventure = "Adventure"
            case animation = "Animation"
            case crime = "Crime"
        }
}








