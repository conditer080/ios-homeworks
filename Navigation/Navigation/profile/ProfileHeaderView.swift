//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by z on 5/2/22.
//

import UIKit

class ProfileHeaderView: UIView {
    
    let view = UIView(frame: CGRect(x: 100, y: 200, width: 40, height: 80))
    
    func customize() {
        
        view.backgroundColor = .orange
        addSubview(view)
    }
}
