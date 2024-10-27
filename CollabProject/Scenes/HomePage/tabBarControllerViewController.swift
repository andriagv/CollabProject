//
//  tabBarControllerViewController.swift
//  CollabProject
//
//  Created by Giorgi Gakhokidze on 26.10.24.
//

import UIKit

class tabBarController: UITabBarController {

    let titleLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabs()
        titleLabelConfig()
    }
    
    private func titleLabelConfig() {
        view.addSubview(titleLabel)
        titleLabel.textColor = .black
        titleLabel.text = "Movie man"
        titleLabel.font = UIFont(name: "Georgia-Bold", size: 20)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide
                .topAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor)
        ])
        self.navigationItem.titleView = titleLabel
    }

    private func configureTabs() {
        let vc1 = HomePageViewController()
        let vc2 = FavoritesPageViewController()
        
        vc1.tabBarItem.image = UIImage(named: "Film")?.withRenderingMode(.alwaysOriginal)
        vc2.tabBarItem.image = UIImage(systemName: "bookmark")
        
        setViewControllers([vc1, vc2], animated: true)
    }

}
