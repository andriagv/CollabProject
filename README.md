MovieApp
A dynamic iOS application for browsing movies, checking ratings, and managing favourite’s. Built with UIKit and following the MVVM architecture pattern.
Features
Home Page
	•	Now Showing Section
	◦	Horizontal scrollable collection of new releases
	◦	Movie posters with titles and IMDb ratings
	◦	Clean, card-based UI design
	•	Popular Movies Section
	◦	Vertical scrollable list
	◦	Detailed movie cards including:
	▪	Movie poster
	▪	Genre tags
	▪	Title
	▪	Runtime
	▪	IMDb rating
	•	Navigation
	◦	Quick access to movies list
	◦	Favourite’s list shortcut
Favorites Page
	•	Collection of user's favourite movies
	•	Movie cards displaying:
	◦	Movie poster
	◦	Title
	◦	IMDb rating
Details Page
Comprehensive movie information including:
	•	Full-size movie poster
	•	Genre tags
	•	Title
	•	IMDb rating
	•	Language
	•	Runtime
	•	Plot description
	•	Cast section
	◦	Actor/Actress photos
	◦	Cast member names
Technical Details
	•	Framework: UIKit
	•	Architecture Pattern: MVVM
	•	Asset Management: Local image assets
	•	Development Tool: Xcode
Screenshots
 აქ ჩავსვათ სქრინშოტები თუ გვინდა..
Team Members
	•	Andria Gvaramia
	•	Giorgi Gakhokidze
	•	Tinatin Jishkariani
	•	Giorgi Kakaladze
	•	Irakli Janashvili
	•	Levan Gorjeladze
Project Structure:

CollabProject/
├── App/
│   ├── AppDelegate
│   └── SceneDelegate
├── Models/
│   ├── Movie
│   └── MovieList
├── Resources/
│   └── Assets
├── Scenes/
│   ├── DetailPage/
│   ├── FavoritePage/
│   │   ├── Cell/
│   │   │   └── FavoritePageCollectionViewCell
│   │   ├── FavoritesPageViewController
│   │   └── FavoritesPageViewModel
│   └── HomePage/
│       ├── Cell/
│       │   ├── HomePageCollectionViewCell
│       │   └── HomePageTableViewCell
│       ├── HomePageViewController
│       ├── HomePageViewModel
│       └── tabBarControllerViewController
├── Supporting/
│   ├── Info
│   └── CollabProject

Requirements
	•	iOS [version requirement]
	•	Xcode (version: 16)
Installation
	1	Clone the repository: https://github.com/andriagv/CollabProject.git
	1	Open CollabProject in Xcode
	2	Build and run the project
Contributing
This project is maintained by the team members listed above. For any questions or suggestions, please reach out to the team.
