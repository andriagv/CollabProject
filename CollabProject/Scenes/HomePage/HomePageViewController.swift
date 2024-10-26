//
//  HomePageViewController.swift
//  CollabProject
//
//  Created by Apple on 25.10.24.
//

import UIKit

class HomePageViewController: UIViewController {
    
    private let viewModel = HomePageViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        collectionView.reloadData()
    }
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "MovieMan"
        label.font = .boldSystemFont(ofSize: 24)
        label.textColor = .black
        return label
    }()
    
    private let nowShowingLabel: UILabel = {
        let label = UILabel()
        label.text = "Now Showing"
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()
    
    // MARK: - UI Elements
    private lazy var collectionView: UICollectionView = {
        let layout = createLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .systemBackground
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(HomePageCollectionViewCell.self, forCellWithReuseIdentifier: "HomePageCollectionViewCell")
        return collectionView
    }()
    
    // MARK: - Setup Methods
    private func setupConstraints() {
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        view.addSubview(nowShowingLabel)
        view.addSubview(collectionView)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        nowShowingLabel.translatesAutoresizingMaskIntoConstraints = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            nowShowingLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 24),
            nowShowingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            collectionView.topAnchor.constraint(equalTo: nowShowingLabel.bottomAnchor, constant: 16),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func createLayout() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(135), heightDimension: .absolute(280))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(135), heightDimension: .absolute(280))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.interGroupSpacing = 16
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16)
        
        return UICollectionViewCompositionalLayout(section: section)
    }
}

// MARK: - UICollectionViewDataSource
extension HomePageViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfMovies
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomePageCollectionViewCell", for: indexPath) as? HomePageCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let movie = viewModel.movie(at: indexPath.item)
        cell.configure(with: movie)
        return cell
    }
}

// MARK: - UICollectionViewDelegate
extension HomePageViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
}

