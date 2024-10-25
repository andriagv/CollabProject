//
//  HopePageViewModel.swift
//  CollabProject
//
//  Created by Apple on 25.10.24.
//

import Foundation
//tinatini
final class HopePageViewModel {
    
    
    
    private var movies: [MovieModel] = MovieModel.allMovies
   
    var numberOfMovies: Int {
        movies.count
    }
    
    func movie(at index: Int) -> MovieModel {
        movies[index]
    }
    
    func getNewMovie() {
        
    }
    
    

}
