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

//        let navigationBarWidth: CGFloat = self.navigationController!.navigationBar.frame.width
        let navigationBarHeight: CGFloat = self.navigationController!.navigationBar.frame.height
//        let statusBarHeigh = UIApplication.shared.statusBarManager?.statusBarFrame.height
        let statusBarHeigh = view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        let tabBarHeight = CGFloat((self.tabBarController?.tabBar.frame.size.height)!)
        
        
        let profileHV = ProfileHeaderView(frame: CGRect(x: 0, y: 0 + statusBarHeigh + navigationBarHeight, width: screenWidth, height: screenHeight - tabBarHeight ))
  

        
        
        profileHV.customize()
        view.addSubview(profileHV)
    }
}
