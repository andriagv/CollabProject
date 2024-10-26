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
    
    enum Genre {
        case action, adventure, fantasy, horore, mystery, thriller, romance, sciFi, drama, animation, comedy, crime
    }
}








