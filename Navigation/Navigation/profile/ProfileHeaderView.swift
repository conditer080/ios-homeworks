//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by z on 5/2/22.
//

import UIKit

class ProfileHeaderView: UIView {
    
    
    
    let view = UIView(frame: CGRect(x: 0, y: 0, width: 1000 , height: 600))
    let imageView = UIImageView(frame: CGRect(x: 16, y: 16, width: 100, height: 100))
    let profileLabel = UILabel.init(frame: CGRect(x: 140, y: 27, width: 100, height: 20))
    
    
    func customize() {
       
       view.backgroundColor = .lightGray
        
        imageView.backgroundColor = .white
        imageView.image = UIImage(named: "linups_img1")
        imageView.layer.cornerRadius = 50
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        imageView.layer.borderWidth = 3
        
        profileLabel.text = "Linups here"
        profileLabel.font = UIFont.boldSystemFont(ofSize: 18)
        profileLabel.textColor = .black
        profileLabel.textAlignment = .center
        
        
        addSubview(view)
        addSubview(imageView)
        addSubview(profileLabel)
        
    }
}
