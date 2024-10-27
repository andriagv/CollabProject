//
//  HopePageTableViewCell.swift
//  CollabProject
//
//  Created by Apple on 25.10.24.
//
import SwiftUI
import UIKit

class HomePageTableViewCell: UITableViewCell {
    
    private var movieName = UILabel()
    private var movieRating = UILabel()
    private var movieGenre = UILabel()
    private var movieImage = UIImageView()
    private var movieLenght = UILabel()
    private var movieGenreStack = UIStackView()
    private var imdbRatingStack = UIStackView()
    private var starImage = UIImageView()
    private var clockImage = UIImageView()
    
    var movie: Movie?
    
    private var name: String?
    private var lenght: String?
    private var image: UIImage?
    private var rating: String?
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupUI()
    }
    
    private func setupUI() {
        cellConfig()
    }

    private func setupGenres(genres: [Movie.Genre]) {
        movieGenreStack.arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        for genre in genres {
            let genreLabel = UILabel()
            genreLabel.text = genre.rawValue
            genreLabel.backgroundColor = Colors.genrecolor
            genreLabel.textColor = Colors.genreColorLabel
            genreLabel.layer.cornerRadius = 15
            genreLabel.clipsToBounds = true
            genreLabel.font = UIFont.systemFont(ofSize: 14)
            genreLabel.textAlignment = .center
            movieGenreStack.addArrangedSubview(genreLabel)
            
            genreLabel.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                genreLabel.heightAnchor.constraint(equalToConstant: 30),
                genreLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 75)
            ])
        }
    }
    
    func configure(movie: Movie) {
        movieName.text = movie.name
        movieLenght.text = "\(movie.length)"
        movieRating.text = "\(movie.imdbRating)/10 IMDB"
        setupGenres(genres: movie.genre)
        movieImage.image = movie.movieImage
    }
    
    private func cellConfig() {
        contentView.addSubview(starImage)
        contentView.addSubview(movieName)
        contentView.addSubview(movieRating)
        contentView.addSubview(movieGenre)
        contentView.addSubview(movieImage)
        contentView.addSubview(movieLenght)
        contentView.addSubview(clockImage)
        contentView.addSubview(movieGenreStack)
        contentView.addSubview(imdbRatingStack)
        
        movieImage.layer.cornerRadius = 10
        movieImage.layer.masksToBounds = true
        
        imdbRatingStack.addArrangedSubview(starImage)
        imdbRatingStack.addArrangedSubview(movieRating)
        imdbRatingStack.spacing = 5
        
        movieGenreStack.spacing = 10
        
        movieLenght.font = UIFont.systemFont(ofSize: 14, weight: .light)
        movieName.font =  UIFont.systemFont(ofSize: 20, weight: .medium)
        
        starImage.image = UIImage(systemName: "star.fill")
        starImage.tintColor = Colors.starImageTintColor
        
        movieRating.font = UIFont(name: "Helvetica-Light", size: 14)
        movieRating.alpha = 0.5
        
        clockImage.image = UIImage(systemName: "clock")
        clockImage.tintColor = .black
        
        starImage.translatesAutoresizingMaskIntoConstraints = false
        movieName.translatesAutoresizingMaskIntoConstraints = false
        movieGenre.translatesAutoresizingMaskIntoConstraints = false
        movieImage.translatesAutoresizingMaskIntoConstraints = false
        movieLenght.translatesAutoresizingMaskIntoConstraints = false
        movieRating.translatesAutoresizingMaskIntoConstraints = false
        clockImage.translatesAutoresizingMaskIntoConstraints = false
        movieGenreStack.translatesAutoresizingMaskIntoConstraints = false
        imdbRatingStack.translatesAutoresizingMaskIntoConstraints = false
                
        NSLayoutConstraint.activate([
            movieImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            movieImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            movieImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            movieImage.heightAnchor.constraint(equalToConstant: 128),
            movieImage.widthAnchor.constraint(equalToConstant: 85),
        
            clockImage.leftAnchor.constraint(equalTo: movieName.leftAnchor),
            clockImage.rightAnchor.constraint(equalTo: movieLenght.leftAnchor, constant: -10),
            clockImage.centerYAnchor.constraint(equalTo: movieLenght.centerYAnchor),
            clockImage.heightAnchor.constraint(equalToConstant: 14),
            clockImage.widthAnchor.constraint(equalToConstant: 14),
        
            movieName.topAnchor.constraint(equalTo: movieImage.topAnchor),
            movieName.leftAnchor.constraint(equalTo: movieImage.rightAnchor, constant: 20),
            movieName.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 30),
        
            imdbRatingStack.topAnchor.constraint(equalTo: movieName.bottomAnchor, constant: 10),
            imdbRatingStack.leftAnchor.constraint(equalTo: movieName.leftAnchor),
        
            starImage.widthAnchor.constraint(equalToConstant: 15),
            starImage.heightAnchor.constraint(equalToConstant: 15),
        
            movieGenreStack.leftAnchor.constraint(equalTo: movieName.leftAnchor),
            movieGenreStack.topAnchor.constraint(equalTo: movieRating.bottomAnchor, constant: 15),
        
            movieLenght.leftAnchor.constraint(equalTo: clockImage.rightAnchor, constant: 20),
            movieLenght.bottomAnchor.constraint(equalTo: movieImage.bottomAnchor),
        ])
    }
    
    private struct Colors {
        static let starImageTintColor = UIColor(red: 255/255, green: 195/255, blue: 25/255, alpha: 1.0)
        static let genrecolor = UIColor(red: 219/255.0, green: 227/255.0, blue: 255/255.0, alpha: 1.0)
        static let genreColorLabel = UIColor(red: 136/255.0, green: 164/255.0, blue: 232/255.0, alpha: 1.0)
    }
}

