//
//  HopePageViewModel.swift
//  CollabProject
//
//  Created by Apple on 25.10.24.
//

import Foundation

final class HomePageViewModel {
    
    var movies = MovieList()

    var numberOfMovies: Int {
        movies.allMovies.count
    }
    
    func movie(at index: Int) -> Movie {
        movies.allMovies[index]
    }
}
