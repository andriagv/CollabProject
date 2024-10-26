import Foundation
import UIKit

class MovieList {
    let allMovies: [Movie] = [
        Movie(
            name: "Inception",
            imdbRating: 8.8,
            isFavorite: false,
            isNowShowing: true,
            isPopular: false,
            cast: [
                Movie.Cast(name: "Leonardo DiCaprio", image: UIImage(named: "leonardo")),
                Movie.Cast(name: "Joseph Gordon-Levitt", image: UIImage(named: "joseph")),
                Movie.Cast(name: "Elliot Page", image: UIImage(named: "elliot")),
                Movie.Cast(name: "Tom Hardy", image: UIImage(named: "tom_hardy")),
                Movie.Cast(name: "Ken Watanabe", image: UIImage(named: "ken"))
            ],
            movieImage: UIImage(named: "inception"),
            description: "A mind-bending thriller that explores the world of dreams.",
            length: "2h 28m",
            language: "English",
            pgRating: "PG-13",
            genre: [.action, .adventure, .sciFi]
        ),
        Movie(
            name: "The Dark Knight",
            imdbRating: 9.0,
            isFavorite: false,
            isNowShowing: true,
            isPopular: false,
            cast: [
                Movie.Cast(name: "Christian Bale", image: UIImage(named: "christian")),
                Movie.Cast(name: "Heath Ledger", image: UIImage(named: "heath")),
                Movie.Cast(name: "Aaron Eckhart", image: UIImage(named: "aaron")),
                Movie.Cast(name: "Michael Caine", image: UIImage(named: "michael")),
                Movie.Cast(name: "Maggie Gyllenhaal", image: UIImage(named: "maggie"))
            ],
            movieImage: UIImage(named: "dark_knight"),
            description: "Batman faces the Joker, a criminal mastermind.",
            length: "2h 32m",
            language: "English",
            pgRating: "PG-13",
            genre: [.action, .crime, .drama]
        ),
        Movie(
            name: "Interstellar",
            imdbRating: 8.6,
            isFavorite: false,
            isNowShowing: true,
            isPopular: false,
            cast: [
                Movie.Cast(name: "Matthew McConaughey", image: UIImage(named: "matthew")),
                Movie.Cast(name: "Anne Hathaway", image: UIImage(named: "anne")),
                Movie.Cast(name: "Jessica Chastain", image: UIImage(named: "jessica")),
                Movie.Cast(name: "Michael Caine", image: UIImage(named: "michael")),
                Movie.Cast(name: "Timothée Chalamet", image: UIImage(named: "timothee"))
            ],
            movieImage: UIImage(named: "interstellar"),
            description: "A team of explorers travels beyond this galaxy.",
            length: "2h 49m",
            language: "English",
            pgRating: "PG-13",
            genre: [.adventure, .drama, .sciFi]
        ),
        Movie(
            name: "Parasite",
            imdbRating: 8.6,
            isFavorite: false,
            isNowShowing: true,
            isPopular: false,
            cast: [
                Movie.Cast(name: "Song Kang-ho", image: UIImage(named: "song")),
                Movie.Cast(name: "Lee Sun-kyun", image: UIImage(named: "lee")),
                Movie.Cast(name: "Cho Yeo-jeong", image: UIImage(named: "cho")),
                Movie.Cast(name: "Choi Woo-shik", image: UIImage(named: "choi")),
                Movie.Cast(name: "Park So-dam", image: UIImage(named: "park"))
            ],
            movieImage: UIImage(named: "parasite"),
            description: "A poor family schemes to become employed by a wealthy family.",
            length: "2h 12m",
            language: "Korean",
            pgRating: "R",
            genre: [.comedy, .drama, .thriller]
        ),
        Movie(
            name: "The Matrix",
            imdbRating: 8.7,
            isFavorite: false,
            isNowShowing: false,
            isPopular: true,
            cast: [
                Movie.Cast(name: "Keanu Reeves", image: UIImage(named: "keanu")),
                Movie.Cast(name: "Carrie-Anne Moss", image: UIImage(named: "carrie")),
                Movie.Cast(name: "Laurence Fishburne", image: UIImage(named: "laurence")),
                Movie.Cast(name: "Hugo Weaving", image: UIImage(named: "hugo")),
                Movie.Cast(name: "Gloria Foster", image: UIImage(named: "gloria"))
            ],
            movieImage: UIImage(named: "matrix"),
            description: "A hacker learns about the true nature of reality.",
            length: "2h 16m",
            language: "English",
            pgRating: "R",
            genre: [.action, .sciFi]
        ),
        Movie(
            name: "The Godfather",
            imdbRating: 9.2,
            isFavorite: true,
            isNowShowing: false,
            isPopular: true,
            cast: [
                Movie.Cast(name: "Marlon Brando", image: UIImage(named: "marlon")),
                Movie.Cast(name: "Al Pacino", image: UIImage(named: "al")),
                Movie.Cast(name: "James Caan", image: UIImage(named: "james")),
                Movie.Cast(name: "Richard S. Castellano", image: UIImage(named: "richard")),
                Movie.Cast(name: "Sterling Hayden", image: UIImage(named: "sterling"))
            ],
            movieImage: UIImage(named: "godfather"),
            description: "The aging patriarch of a crime dynasty transfers control to his son.",
            length: "2h 55m",
            language: "English",
            pgRating: "R",
            genre: [.crime, .drama]
        ),
        Movie(
            name: "Forrest Gump",
            imdbRating: 8.8,
            isFavorite: true,
            isNowShowing: false,
            isPopular: true,
            cast: [
                Movie.Cast(name: "Tom Hanks", image: UIImage(named: "tom")),
                Movie.Cast(name: "Robin Wright", image: UIImage(named: "robin")),
                Movie.Cast(name: "Gary Sinise", image: UIImage(named: "gary")),
                Movie.Cast(name: "Mykelti Williamson", image: UIImage(named: "mykelti")),
                Movie.Cast(name: "Sally Field", image: UIImage(named: "sally"))
            ],
            movieImage: UIImage(named: "forrest_gump"),
            description: "The story of a man with low IQ but a big heart.",
            length: "2h 22m",
            language: "English",
            pgRating: "PG-13",
            genre: [.drama, .romance]
        ),
        Movie(
            name: "Gladiator",
            imdbRating: 8.5,
            isFavorite: true,
            isNowShowing: false,
            isPopular: false,
            cast: [
                Movie.Cast(name: "Russell Crowe", image: UIImage(named: "russell")),
                Movie.Cast(name: "Joaquin Phoenix", image: UIImage(named: "joaquin")),
                Movie.Cast(name: "Connie Nielsen", image: UIImage(named: "connie")),
                Movie.Cast(name: "Oliver Reed", image: UIImage(named: "oliver")),
                Movie.Cast(name: "Djimon Hounsou", image: UIImage(named: "djimon"))
            ],
            movieImage: UIImage(named: "gladiator"),
            description: "A Roman general seeks revenge after betrayal.",
            length: "2h 35m",
            language: "English",
            pgRating: "R",
            genre: [.action, .adventure, .drama]
        ),
        Movie(
            name: "Titanic",
            imdbRating: 7.8,
            isFavorite: true,
            isNowShowing: false,
            isPopular: false,
            cast: [
                Movie.Cast(name: "Leonardo DiCaprio", image: UIImage(named: "leonardo")),
                Movie.Cast(name: "Kate Winslet", image: UIImage(named: "kate")),
                Movie.Cast(name: "Billy Zane", image: UIImage(named: "billy")),
                Movie.Cast(name: "Kathy Bates", image: UIImage(named: "kathy")),
                Movie.Cast(name: "Bill Paxton", image: UIImage(named: "bill"))
            ],
            movieImage: UIImage(named: "titanic"),
            description: "A romance aboard the ill-fated R.M.S. Titanic.",
            length: "3h 15m",
            language: "English",
            pgRating: "PG-13",
            genre: [.drama, .romance]
        ),
        Movie(
            name: "The Lion King",
            imdbRating: 8.5,
            isFavorite: true,
            isNowShowing: false,
            isPopular: false,
            cast: [
                Movie.Cast(name: "Matthew Broderick", image: UIImage(named: "matthew_b")),
                Movie.Cast(name: "James Earl Jones", image: UIImage(named: "james")),
                Movie.Cast(name: "Jeremy Irons", image: UIImage(named: "jeremy")),
                Movie.Cast(name: "Whoopi Goldberg", image: UIImage(named: "whoopi")),
                Movie.Cast(name: "Rowan Atkinson", image: UIImage(named: "rowan"))
            ],
            movieImage: UIImage(named: "lion_king"),
            description: "A young lion prince flees his kingdom.",
            length: "1h 58m",
            language: "English",
            pgRating: "G",
            genre: [.animation, .adventure, .drama]
        )
    ]
}
