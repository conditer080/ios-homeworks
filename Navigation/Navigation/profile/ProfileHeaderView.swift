//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by z on 5/2/22.
//

import UIKit


let screenProfileHV = UIScreen.main.bounds
let screenProfileWidth = screenProfileHV.size.width
let screenProfileHeight = screenProfileHV.size.height


class ProfileHeaderView: UIView {
    
    
    let imageSize: CGFloat = 100
    lazy var profileImage = UIImageView(frame: CGRect(x: 16, y: 16, width: imageSize, height: imageSize))
    
    let profileLabel = UILabel.init(frame: CGRect(x: 0, y: 27, width: screenProfileWidth, height: 20))
    
    lazy var profileButton = UIButton.init(frame: CGRect(x: 16, y: 32 + imageSize, width: screenProfileWidth - 32, height: 50))
    
    lazy var profileButtonYposition = profileButton.frame.origin.y
    
    lazy var statusLabel = UILabel.init(frame: CGRect(x: 0, y: profileButtonYposition - 34, width: screenProfileWidth, height: 16))
    
    func customize() {
        
        backgroundColor = .systemGray3
               
        profileImage.backgroundColor = .white
        profileImage.image = UIImage(named: "linups_img1")
        profileImage.layer.cornerRadius = imageSize / 2
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
        profileButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        statusLabel.text = "Just waiting"
        statusLabel.font = UIFont.boldSystemFont(ofSize: 14)
        statusLabel.textColor = .systemGray6
        statusLabel.textAlignment = .center
        
        addSubview(profileImage)
        addSubview(profileLabel)
        addSubview(profileButton)
        addSubview(statusLabel)
    }
    
    @objc private func buttonPressed() {
        print("\(statusLabel.text!)")
//        print("profileButtonYposition = \(profileButtonYposition)")
    }
}
