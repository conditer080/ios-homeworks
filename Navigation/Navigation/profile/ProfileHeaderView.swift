//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by z on 5/2/22.
//

import UIKit


    var screenProfileHV = UIScreen.main.bounds
   let screenProfileWidth = screenProfileHV.size.width
    let screenProfileHeight = screenProfileHV.size.height

class ProfileHeaderView: UIView {
    
    
    
    let view = UIView(frame: CGRect(x: 0, y: 0, width: screenProfileWidth , height: screenProfileHeight - 120))
    let profileImage = UIImageView(frame: CGRect(x: 16, y: 16, width: 100, height: 100))
    let profileLabel = UILabel.init(frame: CGRect(x: 0, y: 27, width: screenProfileWidth, height: 20))
    let profileButton = UIButton.init(frame: CGRect(x: 16, y: 132, width: screenProfileWidth - 32, height: 50))
    
    
    
    
    
    func customize() {
       
       view.backgroundColor = .lightGray
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.systemGray6.cgColor
        
        profileImage.backgroundColor = .white
        profileImage.image = UIImage(named: "linups_img1")
        profileImage.layer.cornerRadius = 50
        profileImage.clipsToBounds = true
        profileImage.contentMode = .scaleAspectFit
        profileImage.layer.borderWidth = 3
        
        profileLabel.text = "Linups here"
        profileLabel.font = UIFont.boldSystemFont(ofSize: 18)
        profileLabel.textColor = .black
        profileLabel.textAlignment = .center
        
        profileButton.backgroundColor = .link
        profileButton.setTitle("Show status", for: .normal)
        profileButton.setTitleColor(UIColor.white, for: .normal)
        profileButton.layer.cornerRadius = 4
        profileButton.layer.shadowOffset.width = 4
        profileButton.layer.shadowOffset.height = 4
        profileButton.layer.shadowRadius = 4
        profileButton.layer.shadowColor = UIColor.black.cgColor
        profileButton.layer.shadowOpacity = 0.7
        
        
        addSubview(view)
        addSubview(profileImage)
        addSubview(profileLabel)
        addSubview(profileButton)
        
    }
}
