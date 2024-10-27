//
//  FavoritesPageViewController.swift
//  CollabProject
//
//  Created by Apple on 25.10.24.
//

//
//  FavoritesPageViewController.swift
//  CollabProject
//
//  Created by Apple on 25.10.24.
//
 
import UIKit
import Foundation
 
final class FavoritesPageViewController: UIViewController {
   
    let viewModel = FavoritesPageViewModel()
    
    var movie: Movie?
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Favorites"
        label.font = UIFont(name: "Georgia-Bold", size: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let screenWidth = UIScreen.main.bounds.width
        let itemWidth = (screenWidth - 68) / 2
  
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth * 1.9)
 
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .clear
        collection.register(FavoritePageCollectionViewCell.self, forCellWithReuseIdentifier: "FavoritePageCollectionViewCell")
        collection.delegate = self
        collection.dataSource = self
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -35),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            collectionView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
 
extension FavoritesPageViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItems()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavoritePageCollectionViewCell", for: indexPath) as! FavoritePageCollectionViewCell
    
        let movie = viewModel.movie(at: indexPath.item)
        cell.configure(with: movie)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedMovie = viewModel.movie(at: indexPath.item)
        let detailsVC = DetailPageViewController()
        detailsVC.movie = selectedMovie
        navigationController?.pushViewController(detailsVC, animated: true)
    } 
}

