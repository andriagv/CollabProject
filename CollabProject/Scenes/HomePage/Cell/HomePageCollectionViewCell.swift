//
//  HopePageCollectionViewCell.swift
//  CollabProject
//
//  Created by Apple on 25.10.24.
//

import UIKit

class HomePageCollectionViewCell: UICollectionViewCell {
 
    // MARK: - UI Elements
    let movieImageView = UIImageView()
    let movieTitleLabel = UILabel()
    let imdbRatingLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup Methods
    private func setupUI() {
        
        movieImageView.contentMode = .scaleAspectFill
        movieImageView.clipsToBounds = true
        movieImageView.layer.cornerRadius = 8
        movieImageView.layer.shadowColor = UIColor.black.cgColor
        movieImageView.layer.shadowOpacity = 0.2
        movieImageView.layer.shadowOffset = CGSize(width: 0, height: 2)
        contentView.addSubview(movieImageView)
        
        movieTitleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        movieTitleLabel.numberOfLines = 0
        movieTitleLabel.textAlignment = .left
        contentView.addSubview(movieTitleLabel)
        
        imdbRatingLabel.font = UIFont.systemFont(ofSize: 14)
        imdbRatingLabel.textAlignment = .left
        imdbRatingLabel.textColor = UIColor.systemGray
        contentView.addSubview(imdbRatingLabel)
        
        movieImageView.isAccessibilityElement = true
        movieImageView.accessibilityLabel = "Movie Poster"
        movieTitleLabel.isAccessibilityElement = true
        imdbRatingLabel.isAccessibilityElement = true
    }
    
    private func setupConstraints() {
        movieImageView.translatesAutoresizingMaskIntoConstraints = false
        movieTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        imdbRatingLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            movieImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            movieImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            movieImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            movieImageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.7),
            
            movieTitleLabel.topAnchor.constraint(equalTo: movieImageView.bottomAnchor, constant: 8),
            movieTitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            movieTitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            
            imdbRatingLabel.topAnchor.constraint(equalTo: movieTitleLabel.bottomAnchor, constant: 8),
            imdbRatingLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            imdbRatingLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            imdbRatingLabel.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -8)
        ])
    }
    
    func configure(with movie: Movie) {
        movieImageView.image = movie.movieImage
        movieTitleLabel.text = movie.name
        let starText = NSMutableAttributedString(string: "★ ", attributes: [.foregroundColor: UIColor(red: 1, green: 0.8, blue: 0, alpha: 1)])
        starText.append(NSAttributedString(string: "\(movie.imdbRating)/10 IMDB", attributes: [.foregroundColor: UIColor.systemGray]))
        imdbRatingLabel.attributedText = starText
    }
}
