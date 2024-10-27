//
//  HomePageViewController.swift
//  CollabProject
//
//  Created by Apple on 25.10.24.
//

import UIKit

class HomePageViewController: UIViewController {
    
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    private let tableView = UITableView()
    private let viewModel = HomePageViewModel()
    private let tableStackView = UIStackView()
    private lazy var collectionView: UICollectionView = {
        let layout = createLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .systemBackground
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(HomePageCollectionViewCell.self, forCellWithReuseIdentifier: "HomePageCollectionViewCell")
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
 
    private func setupUI() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        contentView.addSubview(nowShowingLabel)
        contentView.addSubview(collectionView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(tableView)
 
        setupScrollViewConstraints()
        tableViewSetup()
    }
    
    private let nowShowingLabel: UILabel = {
            let label = UILabel()
            label.text = "Now Showing"
            label.font = UIFont(name: "Georgia-Bold", size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
     
    private let titleLabel: UILabel = {
            let label = UILabel()
            label.text = "Popular"
            label.font = UIFont(name: "Georgia-Bold", size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
     
 
    private func setupScrollViewConstraints() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        nowShowingLabel.translatesAutoresizingMaskIntoConstraints = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
 
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
 
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
 
            nowShowingLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            nowShowingLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
 
            collectionView.topAnchor.constraint(equalTo: nowShowingLabel.bottomAnchor, constant: 20),
            collectionView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 5),
            collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            collectionView.heightAnchor.constraint(equalToConstant: 300),
 
            titleLabel.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
 
            tableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            tableView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15),
            tableView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            tableView.heightAnchor.constraint(equalToConstant: 1000),
            
            nowShowingLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            nowShowingLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            
            
            titleLabel.topAnchor.constraint(equalTo: collectionView.bottomAnchor),
            titleLabel.leftAnchor.constraint(equalTo: tableView.leftAnchor)
            
        ])
    }
 
    private func tableViewSetup() {
        tableView.register(HomePageTableViewCell.self, forCellReuseIdentifier: "MovieCell")
        tableView.dataSource = self
        tableView.delegate = self
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
 
extension HomePageViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
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

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedMovie = viewModel.movie(at: indexPath.item)
        let detailsVC = DetailPageViewController()
        detailsVC.movie = selectedMovie
        navigationController?.pushViewController(detailsVC, animated: true)
    }
}
 
extension HomePageViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfMovies
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? HomePageTableViewCell {
            
            let movie = viewModel.movie(at: indexPath.row)
            cell.configure(movie: movie)
            return cell
        }
        return UITableViewCell()
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedMovie = viewModel.movie(at: indexPath.item)
        let detailsVC = DetailPageViewController()
        detailsVC.movie = selectedMovie
        navigationController?.pushViewController(detailsVC, animated: true)
    }
}


