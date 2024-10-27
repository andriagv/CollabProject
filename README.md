# MovieApp

A dynamic iOS application for browsing movies, checking ratings, and managing favorites. Built with UIKit and following the MVVM architecture pattern.

## Features

### Home Page
- **Now Showing Section**  
  - Horizontal, scrollable collection of new releases
  - Displays movie posters with titles and IMDb ratings
  - Clean, card-based UI design

- **Popular Movies Section**  
  - Vertical scrollable list of popular movies
  - Detailed movie cards showing:
    - Movie poster
    - Genre tags
    - Title
    - Runtime
    - IMDb rating

- **Navigation**  
  - Quick access to the complete movies list
  - Shortcut to the favorites list

### Favorites Page
- Displays a collection of user’s favorite movies
- Each movie card includes:
  - Movie poster
  - Title
  - IMDb rating

### Details Page
Comprehensive movie information, including:
- Full-size movie poster
- Genre tags
- Title
- IMDb rating
- Language
- Runtime
- Plot description
- Cast section with actor/actress photos and names

## Technical Details
- **Framework**: UIKit
- **Architecture Pattern**: MVVM
- **Asset Management**: Local image assets
- **Development Tool**: Xcode

## Screenshots
Add screenshots here if desired.

## Team Members
- Andria Gvaramia
- Giorgi Gakhokidze
- Tinatin Jishkariani
- Giorgi Kakaladze
- Irakli Janashvili
- Levan Gorjeladze

## Project Structure

```
CollabProject/
├── App/
│   ├── AppDelegate.swift
│   └── SceneDelegate.swift
├── Models/
│   ├── Movie.swift
│   └── MovieList.swift
├── Resources/
│   └── Assets.xcassets
├── Scenes/
│   ├── DetailPage/
│   ├── FavoritePage/
│   │   ├── Cell/
│   │   │   └── FavoritePageCollectionViewCell.swift
│   │   ├── FavoritesPageViewController.swift
│   │   └── FavoritesPageViewModel.swift
│   └── HomePage/
│       ├── Cell/
│       │   ├── HomePageCollectionViewCell.swift
│       │   └── HomePageTableViewCell.swift
│       ├── HomePageViewController.swift
│       ├── HomePageViewModel.swift
│       └── TabBarControllerViewController.swift
├── Supporting/
│   ├── Info.plist
│   └── CollabProject.xcodeproj
```

## Requirements
- iOS [version requirement]
- Xcode 16

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/andriagv/CollabProject.git
   ```
2. Open `CollabProject` in Xcode.
3. Build and run the project.
