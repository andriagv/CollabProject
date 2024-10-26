//
//  tabBarControllerViewController.swift
//  CollabProject
//
//  Created by Giorgi Gakhokidze on 26.10.24.
//

import UIKit

class tabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabs()
    }

    private func configureTabs() {
        let vc1 = HomePageViewController()
        let vc2 = FavoritesPageViewController()
        
        vc1.tabBarItem.image = UIImage(named: "Film")?.withRenderingMode(.alwaysOriginal)
        vc2.tabBarItem.image = UIImage(systemName: "bookmark")
        
        setViewControllers([vc1, vc2], animated: true)
    }

}
