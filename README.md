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
<img width="321" alt="AppFavoritesPage" src="https://github.com/user-attachments/assets/8b16cad1-f8f3-4b9a-9b47-92265c971576">
<img width="315" alt="AppDetailsPage" src="https://github.com/user-attachments/assets/bea0b6b1-8ee1-4407-8d47-b629aa455e69">
<img width="311" alt="AppHomePage" src="https://github.com/user-attachments/assets/6db4e8a2-a995-4909-9977-c96ed73e312a">


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
