//
//  MovieModel.swift
//  CollabProject
//
//  Created by Apple on 25.10.24.
//

import Foundation
import UIKit


struct MovieModel {
    var name: String
    var imdbRating: Int
    var isFavorite: Bool = false
    var isNowShowing: Bool = false
    var isPopular: Bool = false
    var cast: [Cast]
    let movieImage: UIImage
    let description: String
    let length: String
    let language: String
    let pgRating: String
    let genre: Genre
    
    struct Cast {
        let name: String
        let image: UIImage
    }
    
    enum Genre {
        case action, adventure, fantasy, horore, mystery, thriller, romance, sciFi, drama, animation
    }
    
    static let allMovies: [MovieModel] = [
        MovieModel(
            name: "Inception",
            imdbRating: 9,
            isFavorite: false,
            isNowShowing: true,
            isPopular: false,
            cast: [
                Cast(name: "Leonardo DiCaprio", image: UIImage(named: "leonardo")!),
                Cast(name: "Joseph Gordon-Levitt", image: UIImage(named: "joseph")!),
                Cast(name: "Elliot Page", image: UIImage(named: "elliot")!),
                Cast(name: "Tom Hardy", image: UIImage(named: "tom_hardy")!),
                Cast(name: "Ken Watanabe", image: UIImage(named: "ken")!)
            ],
            movieImage: UIImage(named: "inception")!,
            description: "A mind-bending thriller that explores the world of dreams.",
            length: "2h 28m",
            language: "English",
            pgRating: "PG-13",
            genre: .action
        ),
        MovieModel(
            name: "The Dark Knight",
            imdbRating: 10,
            isFavorite: false,
            isNowShowing: true,
            isPopular: false,
            cast: [
                Cast(name: "Christian Bale", image: UIImage(named: "christian")!),
                Cast(name: "Heath Ledger", image: UIImage(named: "heath")!),
                Cast(name: "Aaron Eckhart", image: UIImage(named: "aaron")!),
                Cast(name: "Michael Caine", image: UIImage(named: "michael")!),
                Cast(name: "Maggie Gyllenhaal", image: UIImage(named: "maggie")!)
            ],
            movieImage: UIImage(named: "dark_knight")!,
            description: "Batman faces the Joker, a criminal mastermind.",
            length: "2h 32m",
            language: "English",
            pgRating: "PG-13",
            genre: .action
        ),
        MovieModel(
            name: "Interstellar",
            imdbRating: 8,
            isFavorite: false,
            isNowShowing: true,
            isPopular: false,
            cast: [
                Cast(name: "Matthew McConaughey", image: UIImage(named: "matthew")!),
                Cast(name: "Anne Hathaway", image: UIImage(named: "anne")!),
                Cast(name: "Jessica Chastain", image: UIImage(named: "jessica")!),
                Cast(name: "Michael Caine", image: UIImage(named: "michael")!),
                Cast(name: "Timothée Chalamet", image: UIImage(named: "timothee")!)
            ],
            movieImage: UIImage(named: "interstellar")!,
            description: "A team of explorers travels beyond this galaxy.",
            length: "2h 49m",
            language: "English",
            pgRating: "PG-13",
            genre: .sciFi
        ),
        MovieModel(
            name: "Parasite",
            imdbRating: 9,
            isFavorite: false,
            isNowShowing: true,
            isPopular: false,
            cast: [
                Cast(name: "Song Kang-ho", image: UIImage(named: "song")!),
                Cast(name: "Lee Sun-kyun", image: UIImage(named: "lee")!),
                Cast(name: "Cho Yeo-jeong", image: UIImage(named: "cho")!),
                Cast(name: "Choi Woo-shik", image: UIImage(named: "choi")!),
                Cast(name: "Park So-dam", image: UIImage(named: "park")!)
            ],
            movieImage: UIImage(named: "parasite")!,
            description: "A poor family schemes to become employed by a wealthy family.",
            length: "2h 12m",
            language: "Korean",
            pgRating: "R",
            genre: .thriller
        ),
        MovieModel(
            name: "The Matrix",
            imdbRating: 8,
            isFavorite: false,
            isNowShowing: false,
            isPopular: true,
            cast: [
                Cast(name: "Keanu Reeves", image: UIImage(named: "keanu")!),
                Cast(name: "Carrie-Anne Moss", image: UIImage(named: "carrie")!),
                Cast(name: "Laurence Fishburne", image: UIImage(named: "laurence")!),
                Cast(name: "Hugo Weaving", image: UIImage(named: "hugo")!),
                Cast(name: "Gloria Foster", image: UIImage(named: "gloria")!)
            ],
            movieImage: UIImage(named: "matrix")!,
            description: "A hacker learns about the true nature of reality.",
            length: "2h 16m",
            language: "English",
            pgRating: "R",
            genre: .action
        ),
        MovieModel(
            name: "The Godfather",
            imdbRating: 10,
            isFavorite: true,
            isNowShowing: false,
            isPopular: true,
            cast: [
                Cast(name: "Marlon Brando", image: UIImage(named: "marlon")!),
                Cast(name: "Al Pacino", image: UIImage(named: "al")!),
                Cast(name: "James Caan", image: UIImage(named: "james")!),
                Cast(name: "Richard S. Castellano", image: UIImage(named: "richard")!),
                Cast(name: "Sterling Hayden", image: UIImage(named: "sterling")!)
            ],
            movieImage: UIImage(named: "godfather")!,
            description: "The aging patriarch of a crime dynasty transfers control to his son.",
            length: "2h 55m",
            language: "English",
            pgRating: "R",
            genre: .drama
        ),
        MovieModel(
            name: "Forrest Gump",
            imdbRating: 9,
            isFavorite: true,
            isNowShowing: false,
            isPopular: true,
            cast: [
                Cast(name: "Tom Hanks", image: UIImage(named: "tom")!),
                Cast(name: "Robin Wright", image: UIImage(named: "robin")!),
                Cast(name: "Gary Sinise", image: UIImage(named: "gary")!),
                Cast(name: "Mykelti Williamson", image: UIImage(named: "mykelti")!),
                Cast(name: "Sally Field", image: UIImage(named: "sally")!)
            ],
            movieImage: UIImage(named: "forrest_gump")!,
            description: "The story of a man with low IQ but a big heart.",
            length: "2h 22m",
            language: "English",
            pgRating: "PG-13",
            genre: .drama
        ),
        MovieModel(
            name: "Gladiator",
            imdbRating: 8,
            isFavorite: true,
            isNowShowing: false,
            isPopular: false,
            cast: [
                Cast(name: "Russell Crowe", image: UIImage(named: "russell")!),
                Cast(name: "Joaquin Phoenix", image: UIImage(named: "joaquin")!),
                Cast(name: "Connie Nielsen", image: UIImage(named: "connie")!),
                Cast(name: "Oliver Reed", image: UIImage(named: "oliver")!),
                Cast(name: "Djimon Hounsou", image: UIImage(named: "djimon")!)
            ],
            movieImage: UIImage(named: "gladiator")!,
            description: "A Roman general seeks revenge after betrayal.",
            length: "2h 35m",
            language: "English",
            pgRating: "R",
            genre: .action
        ),
        MovieModel(
            name: "Titanic",
            imdbRating: 9,
            isFavorite: true,
            isNowShowing: false,
            isPopular: false,
            cast: [
                Cast(name: "Leonardo DiCaprio", image: UIImage(named: "leonardo")!),
                Cast(name: "Kate Winslet", image: UIImage(named: "kate")!),
                Cast(name: "Billy Zane", image: UIImage(named: "billy")!),
                Cast(name: "Kathy Bates", image: UIImage(named: "kathy")!),
                Cast(name: "Bill Paxton", image: UIImage(named: "bill")!)
            ],
            movieImage: UIImage(named: "titanic")!,
            description: "A romance aboard the ill-fated R.M.S. Titanic.",
            length: "3h 15m",
            language: "English",
            pgRating: "PG-13",
            genre: .romance
        ),
        MovieModel(
            name: "The Lion King",
            imdbRating: 8,
            isFavorite: true,
            isNowShowing: false,
            isPopular: false,
            cast: [
                Cast(name: "Matthew Broderick", image: UIImage(named: "matthew_b")!),
                Cast(name: "James Earl Jones", image: UIImage(named: "james")!),
                Cast(name: "Jeremy Irons", image: UIImage(named: "jeremy")!),
                Cast(name: "Whoopi Goldberg", image: UIImage(named: "whoopi")!),
                Cast(name: "Rowan Atkinson", image: UIImage(named: "rowan")!)
            ],
            movieImage: UIImage(named: "lion_king")!,
            description: "A young lion prince flees his kingdom.",
            length: "1h 58m",
            language: "English",
            pgRating: "G",
            genre: .animation
        )
    ]
}







