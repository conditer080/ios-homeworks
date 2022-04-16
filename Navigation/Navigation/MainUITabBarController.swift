//
//  MainUITabBarController.swift
//  Navigation
//
//  Created by z on 4/16/22.
//

import UIKit

class MainUITabBarController: UITabBarController {
    
    let feedVC = FeedViewController()
    let profileVC = ProfileViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()

    }
    private func setupControllers(){
        feedVC.tabBarItem.title = "Feed"
        profileVC.tabBarItem.title = "Profile"
        
        viewControllers = [feedVC,profileVC]
    }

}
