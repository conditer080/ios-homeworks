//
//  ProfileViewController.swift
//  Navigation
//
//  Created by z on 5/2/22.
//

import UIKit


class ProfileViewController: UIViewController {
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        view.backgroundColor = .systemGray4
        
        let screenRect = UIScreen.main.bounds
        let screenWidth = screenRect.size.width
        let screenHeight = screenRect.size.height

        let navigationBarHeight: CGFloat = self.navigationController!.navigationBar.frame.height
        let statusBarHeight = view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
//        let tabBarHeight = CGFloat((self.tabBarController?.tabBar.frame.size.height)!)
        
        let profileHV = ProfileHeaderView(frame: CGRect(x: 0, y: 0 + statusBarHeight + navigationBarHeight, width: screenWidth, height: screenHeight))
  

        
        
        profileHV.customize()
        view.addSubview(profileHV)
    }
}
