//
//  DetailPageViewController.swift
//  CollabProject
//
//  Created by Apple on 25.10.24.
//

import UIKit

class DetailPageViewController: UIViewController, DetailPageViewModelDelegate {
    
    let viewModel = DetailPageViewModel()
    
    var movie: Movie?
    
    private let castTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Cast"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .black
        return label
    }()
    
    private func setupCastTitleLabel() {
        view.addSubview(castTitleLabel)
        castTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            castTitleLabel.bottomAnchor.constraint(equalTo: actorsCollectionView.topAnchor),
            castTitleLabel.leadingAnchor.constraint(equalTo: actorsCollectionView.leadingAnchor)
        ])
    }
    
    let actorsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let actorsCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        actorsCollectionView.backgroundColor = .white
        actorsCollectionView.register(DetailPageCollectionViewCell.self, forCellWithReuseIdentifier: DetailPageCollectionViewCell.identifier)
        layout.scrollDirection = .horizontal
        actorsCollectionView.translatesAutoresizingMaskIntoConstraints = false
        return actorsCollectionView
    }()
    
    let movieImage: UIImageView = {
        let movieImage = UIImageView()
        movieImage.translatesAutoresizingMaskIntoConstraints = false
        movieImage.contentMode = .scaleAspectFill
        return movieImage
    }()
    
    let viewForDetails: UIView = {
        let viewForDetails = UIView()
        viewForDetails.translatesAutoresizingMaskIntoConstraints = false
        return viewForDetails
    }()
    
    let nameRatingButtonView: UIView = {
        let nameAndRating = UIView()
        nameAndRating.translatesAutoresizingMaskIntoConstraints = false
        return nameAndRating
    }()
    
    let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameLabel
    }()
    
    let ratingLabel: UILabel = {
        let ratinglabel = UILabel()
        ratinglabel.font = UIFont.systemFont(ofSize: 14)
        ratinglabel.translatesAutoresizingMaskIntoConstraints = false
        return ratinglabel
    }()
    
    private let favoriteButton: UIButton = {
        let favoriteButton = UIButton(type: .system)
        favoriteButton.setImage(UIImage(systemName: "bookmark"), for: .normal)
        favoriteButton.tintColor = .black
        favoriteButton.translatesAutoresizingMaskIntoConstraints = false
        favoriteButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        favoriteButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        return favoriteButton
    }()
    
    let genreStackView: UIStackView = {
        let genreStackView = UIStackView()
        genreStackView.axis = .horizontal
        genreStackView.spacing = 10
        genreStackView.translatesAutoresizingMaskIntoConstraints = false
        return genreStackView
    }()
    
    //add from here
    private let infoStackView: UIStackView = {
        let infoStackView = UIStackView()
        infoStackView.axis = .horizontal
        infoStackView.distribution = .equalSpacing
        infoStackView.spacing = 16
        return infoStackView
    }()
    
    let lengthLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12)
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    let languageLabel: UILabel = {
        let languageLabel = UILabel()
        languageLabel.translatesAutoresizingMaskIntoConstraints = false
        languageLabel.font = UIFont.systemFont(ofSize: 12)
        languageLabel.textAlignment = .center
        languageLabel.textColor = .black
        return languageLabel
    }()

    let infoRatingLabel: UILabel = {
        let infoRatingLabel = UILabel()
        infoRatingLabel.translatesAutoresizingMaskIntoConstraints = false
        infoRatingLabel.font = UIFont.systemFont(ofSize: 12)
        infoRatingLabel.textAlignment = .center
        infoRatingLabel.textColor = .black
        return infoRatingLabel
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .darkGray
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let desctiptionHeader: UILabel = {
        let desctiptionHeader = UILabel()
        desctiptionHeader.translatesAutoresizingMaskIntoConstraints = false
        desctiptionHeader.text = "Description"
        desctiptionHeader.textColor = .black
        desctiptionHeader.font = UIFont.boldSystemFont(ofSize: 16)
        return desctiptionHeader
    }()
    
    let backButton: UIButton = {
        let backButton = UIButton()
        backButton.setImage(UIImage(systemName: "arrow.backward"), for: .normal)
        backButton.tintColor = .white
        backButton.translatesAutoresizingMaskIntoConstraints = false
        return backButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        self.navigationController?.isNavigationBarHidden = true
        setupUI()
    }
    
    private func setupUI() {
        setupMovieImage()
        setupViewForDetails()
        setupCollectionView()
        setupNameRatingButtonView()
        setupNameLabel()
        setupRatingLabel()
        setupFavoriteButton()
        setupGenreStackView()
        setupDescriptionLabel()
        setupCastTitleLabel()
        setupBackButton()
        configureBackButton()
        configureFavButton()
        setupInfoStackView()
    }
    
    private func setupBackButton() {
        view.addSubview(backButton)
        
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: movieImage.topAnchor, constant: 62),
            backButton.leftAnchor.constraint(equalTo: movieImage.leftAnchor, constant: 24),
            backButton.widthAnchor.constraint(equalToConstant: 24),
            backButton.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
    
    func configureBackButton() {
        backButton.addAction(UIAction(handler: { [weak self] action in
            self?.backButtonTapped()
        }), for: .touchUpInside)
    }
    
    func navigateBackToRoot() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    func backButtonTapped() {
        viewModel.backButtonTapped()
    }
    
    private func setupMovieImage() {
        view.addSubview(movieImage)
        movieImage.image = movie?.movieImage
        NSLayoutConstraint.activate([
            movieImage.topAnchor.constraint(equalTo: view.topAnchor),
            movieImage.leftAnchor.constraint(equalTo: view.leftAnchor),
            movieImage.rightAnchor.constraint(equalTo: view.rightAnchor),
            movieImage.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    private func setupViewForDetails() {
        view.addSubview(viewForDetails)
        viewForDetails.backgroundColor = .white
        viewForDetails.layer.cornerRadius = 10
        viewForDetails.layer.masksToBounds = true
        
        NSLayoutConstraint.activate([
            viewForDetails.leftAnchor.constraint(equalTo: view.leftAnchor),
            viewForDetails.rightAnchor.constraint(equalTo: view.rightAnchor),
            viewForDetails.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            viewForDetails.topAnchor.constraint(equalTo: view.topAnchor, constant: 240),
        ])
    }
    
    private func setupNameRatingButtonView() {
        viewForDetails.addSubview(nameRatingButtonView)
        
        NSLayoutConstraint.activate([
            nameRatingButtonView.centerXAnchor.constraint(equalTo: viewForDetails.centerXAnchor),
            nameRatingButtonView.leftAnchor.constraint(equalTo: viewForDetails.leftAnchor, constant: 24),
            nameRatingButtonView.topAnchor.constraint(equalTo: viewForDetails.topAnchor, constant: 30),
            nameRatingButtonView.heightAnchor.constraint(equalToConstant: 73),
            
        ])
    }
    
    private func setupNameLabel() {
        nameRatingButtonView.addSubview(nameLabel)
        nameLabel.numberOfLines = 0
        nameLabel.text = movie?.name
        nameLabel.textColor = .black
        
        // IS NOT ON TOP LEFT // ARVICI VER GAVASWORE
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: nameRatingButtonView.topAnchor, constant: 0),
            nameLabel.leftAnchor.constraint(equalTo: nameRatingButtonView.leftAnchor, constant: 0),
            nameLabel.widthAnchor.constraint(equalToConstant: 200),
            nameLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setupRatingLabel() {
        let starImageView = UIImageView()
        starImageView.translatesAutoresizingMaskIntoConstraints = false
        starImageView.image = UIImage(systemName: "star.fill")
        starImageView.tintColor = UIColor(red: 255/255, green: 195/255, blue: 25/255, alpha: 1.0)
        
        nameRatingButtonView.addSubview(starImageView)
        nameRatingButtonView.addSubview(ratingLabel)
        
        ratingLabel.numberOfLines = 2
        ratingLabel.text = "\(movie?.imdbRating ?? 0)/10 IMDb"
        ratingLabel.textColor = UIColor(red: 156/255, green: 156/255, blue: 156/255, alpha: 1.0)
        
        NSLayoutConstraint.activate([
            
            starImageView.centerYAnchor.constraint(equalTo: ratingLabel.centerYAnchor),
            starImageView.leftAnchor.constraint(equalTo: nameRatingButtonView.leftAnchor, constant: 0),
            starImageView.widthAnchor.constraint(equalToConstant: 12),
            starImageView.heightAnchor.constraint(equalToConstant: 12),
            
            ratingLabel.leftAnchor.constraint(equalTo: starImageView.rightAnchor, constant: 4),
            ratingLabel.bottomAnchor.constraint(equalTo: nameRatingButtonView.bottomAnchor)
        ])
    }
    
    private func setupFavoriteButton() {
        nameRatingButtonView.addSubview(favoriteButton)
        
        NSLayoutConstraint.activate([
            favoriteButton.topAnchor.constraint(equalTo: nameRatingButtonView.topAnchor, constant: 8),
            favoriteButton.rightAnchor.constraint(equalTo: nameRatingButtonView.rightAnchor, constant: -8)
        ])
    }
    
    func configureFavButton() {
        favoriteButton.addAction(UIAction(handler: { [weak self] action in
            self?.favButtonPressed()
        }), for: .touchUpInside)
    }
    
    func favButtonPressed() {
        movie?.isFavorite.toggle()
    }
    
    private func setupDescriptionLabel() {
        viewForDetails.addSubview(desctiptionHeader)
        viewForDetails.addSubview(descriptionLabel)
        
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.text = movie?.description
        descriptionLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            desctiptionHeader.topAnchor.constraint(equalTo: genreStackView.bottomAnchor, constant: 16),
            desctiptionHeader.leftAnchor.constraint(equalTo: viewForDetails.leftAnchor, constant: 24),
            descriptionLabel.topAnchor.constraint(equalTo: desctiptionHeader.bottomAnchor, constant: 7),
            descriptionLabel.leftAnchor.constraint(equalTo: viewForDetails.leftAnchor, constant: 24),
            descriptionLabel.rightAnchor.constraint(equalTo: viewForDetails.rightAnchor, constant: -24),
            descriptionLabel.centerXAnchor.constraint(equalTo: viewForDetails.centerXAnchor)
        ])
    }
    
    private func setupGenreStackView() {
        view.addSubview(genreStackView)
        guard let genres = movie?.genre else { return }
        
        for genre in genres {
            let label = UILabel()
            label.text = String(describing: genre)
            label.font = UIFont.systemFont(ofSize: 10)
            
            label.layer.cornerRadius = 10
            label.layer.masksToBounds = true
            label.backgroundColor = UIColor(red: 219/255, green: 227/255, blue: 255/255, alpha: 1)
            label.textColor = UIColor(red: 136/255, green: 164/255, blue: 232/255, alpha: 1)
            label.textAlignment = .center
            label.translatesAutoresizingMaskIntoConstraints = false
            
            let leftPadding: CGFloat = 10
            let rightPadding: CGFloat = 10
            
            genreStackView.addArrangedSubview(label)
            
            NSLayoutConstraint.activate([
                label.widthAnchor.constraint(greaterThanOrEqualToConstant: label.intrinsicContentSize.width + leftPadding + rightPadding),
                label.heightAnchor.constraint(equalToConstant: 30)
            ])
        }
        NSLayoutConstraint.activate([
            genreStackView.leadingAnchor.constraint(equalTo: nameRatingButtonView.leadingAnchor),
            genreStackView.topAnchor.constraint(equalTo: nameRatingButtonView.bottomAnchor, constant: 24),
            genreStackView.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
    
    private func setupInfoStackView() {
        viewForDetails.addSubview(infoStackView)
        infoStackView.translatesAutoresizingMaskIntoConstraints = false
        infoStackView.addArrangedSubview(lengthLabel)
        infoStackView.addArrangedSubview(languageLabel)
        infoStackView.addArrangedSubview(infoRatingLabel)
        lengthLabel.text = movie?.length
        languageLabel.text = movie?.language
        infoRatingLabel.text = movie?.pgRating
        
//        let languageTextLabel = UILabel()
//        languageTextLabel.text = "Language"
//        let ratingTextLabel = UILabel()
//        ratingTextLabel.text = "Language"
//        let lengthTextLabel = UILabel()
//        lengthTextLabel.text = "Language"

        NSLayoutConstraint.activate([
                infoStackView.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor),
                infoStackView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20),
                infoStackView.trailingAnchor.constraint(equalTo: viewForDetails.trailingAnchor, constant: -24),
                infoStackView.bottomAnchor.constraint(lessThanOrEqualTo: viewForDetails.bottomAnchor, constant: -20)
            ])
    }
    
    private func setupCollectionView() {
        actorsCollectionView.dataSource = self
        actorsCollectionView.delegate = self
        viewForDetails.addSubview(actorsCollectionView)
        
        NSLayoutConstraint.activate([
            actorsCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
            actorsCollectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actorsCollectionView.leftAnchor.constraint(equalTo: viewForDetails.leftAnchor, constant: 24),
            actorsCollectionView.rightAnchor.constraint(equalTo: viewForDetails.rightAnchor, constant: -24),
            actorsCollectionView.heightAnchor.constraint(equalToConstant: 147)
        ])
    }
}

extension DetailPageViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.numberOfItems()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailPageCollectionViewCell.identifier, for: indexPath) as? DetailPageCollectionViewCell
        let selectedMovie = viewModel.movie(at: indexPath.row)
        cell?.configure(with: selectedMovie.cast[0])
        return cell ?? UICollectionViewCell()
    }
}


extension DetailPageViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 78, height: 110)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 14
    }
    
}

