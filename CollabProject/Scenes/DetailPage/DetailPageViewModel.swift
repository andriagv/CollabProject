//
//  DetailPageViewModel.swift
//  CollabProject
//
//  Created by Apple on 25.10.24.
//

import Foundation
 
protocol DetailPageViewModelDelegate: AnyObject {
    func navigateBackToRoot()
}
 
final class DetailPageViewModel {
    
    let vc = MovieList()
    var Allmovies: [Movie]
    weak var delegate: DetailPageViewModelDelegate?
    
    init() {
        Allmovies = vc.allMovies
    }
    
    func numberOfItems() -> Int {
        Allmovies.count
    }
    
    func movie(at index: Int) -> Movie {
        Allmovies[index]
    }
    
    func backButtonTapped() {
        delegate?.navigateBackToRoot()
    }
}
