//
//  HopePageViewController.swift
//  CollabProject
//
//  Created by Apple on 25.10.24.
//

import UIKit
//tinatini
// ეს არის უბრალოდ ვიუ სადაც ვიზუალი იქნება ჯოუმ ფეიჯის  . ქონსთრეინთების დადების ადგილი

class HomePageViewController: UIViewController {
    
    //MARK: - Properties

    private lazy var NowShowingMovieCollectionView: UICollectionView = {
        let collectionView = UICollectionView ()
        
        
        return collectionView
    }()
    
    private lazy var popularMovieTableView: UITableView = {
        let tableView = UITableView()
        
        return tableView
    }()
    
// MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
//        viewModel.delegate = self
//        viewModel.dataSource = self
        setupUI()
    }
    
    // MARK: - Setup
    private func setupUI() {
        
        
    }
    
    
    
    // MARK: - Actions
    

  

}



// MARK: - extension UITableView


// MARK: - extension UICollectionView
