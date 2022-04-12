//
//  ProfileViewController.swift
//  Netology_IB_Instruments'
//
//  Created by z on 4/12/22.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenWidth = UIScreen.main.bounds.width
        let screenHeigh = UIScreen.main.bounds.height
        if let myView = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? ProfileView {
            myView.frame = CGRect(x: 8, y: 8, width: screenWidth - 8, height: screenHeigh - 8)
            view.addSubview(myView)
        }
    }
}
