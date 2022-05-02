//
//  ProfileViewController.swift
//  Navigation
//
//  Created by z on 5/2/22.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray
        
        let screenRect = UIScreen.main.bounds
        let screenWidth = screenRect.size.width
        let screenHeight = screenRect.size.height
        
        let profileHV = ProfileHeaderView(frame: CGRect(x: 0, y: 0, width: screenWidth , height: screenHeight))
        profileHV.customize()
        view.addSubview(profileHV)
    }
}
