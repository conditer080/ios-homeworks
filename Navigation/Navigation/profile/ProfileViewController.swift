//
//  ProfileViewController.swift
//  Navigation
//
//  Created by z on 5/2/22.
//

import UIKit


class ProfileViewController: UIViewController {
    
    let profileHV = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
//        profileHV.customize()
        view.addSubview(profileHV)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profileHV.frame = view.safeAreaLayoutGuide.layoutFrame
    }
}
