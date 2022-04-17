//
//  infoViewController.swift
//  Navigation
//
//  Created by z on 4/17/22.
//

import UIKit

class infoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        makeButton()
    }
    
    private func makeButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        button.center = view.center
        button.setTitle("guess what", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func tapAction() {

    }
    
    
    
}
