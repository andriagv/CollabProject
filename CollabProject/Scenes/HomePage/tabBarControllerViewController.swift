//
//  tabBarControllerViewController.swift
//  CollabProject
//
//  Created by Giorgi Gakhokidze on 26.10.24.
//

import UIKit

class tabBarController: UITabBarController, UITabBarControllerDelegate {

    let titleLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabs()
        titleLabelConfig()
        self.delegate = self
    }
    
    private func titleLabelConfig() {
        view.addSubview(titleLabel)
        titleLabel.textColor = .black
        titleLabel.text = "Movie man"
        titleLabel.font = UIFont(name: "Georgia-Bold", size: 20)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        self.navigationItem.titleView = titleLabel

        updateTitleLabel(for: selectedViewController)
    }

    private func configureTabs() {
        let vc1 = HomePageViewController()
        let vc2 = FavoritesPageViewController()
        
        vc1.tabBarItem.image = UIImage(named: "Film")?.withRenderingMode(.alwaysOriginal)
        vc2.tabBarItem.image = UIImage(systemName: "bookmark")
        
        setViewControllers([vc1, vc2], animated: true)
        self.tabBar.isTranslucent = false
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        updateTitleLabel(for: viewController)
    }

    private func updateTitleLabel(for viewController: UIViewController?) {
        if viewController is HomePageViewController {
            titleLabel.isHidden = false
        } else {
            titleLabel.isHidden = true
        }
    }

}
