//
//  FavoritesPageViewModel.swift
//  CollabProject
//
//  Created by Apple on 25.10.24.
//

import Foundation
import UIKit
 
 
final class FavoritesPageViewModel {
    
    let vc = MovieList()
    var Allmovies: [Movie]
    
    init() {
        Allmovies = vc.allMovies
    }
    
    func numberOfItems() -> Int {
        let allFavoriteMovie = Allmovies.filter { $0.isFavorite == true }
        Allmovies = allFavoriteMovie
        return allFavoriteMovie.count
    }
    
    func movie(at index: Int) -> Movie {
        return Allmovies[index]
    }
}
