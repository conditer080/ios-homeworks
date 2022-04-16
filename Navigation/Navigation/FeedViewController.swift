//
//  ViewController.swift
//  Navigation
//
//  Created by z on 4/16/22.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(red: 0.3, green: 0.6, blue: 0.1, alpha: 1)
        makeButton()
    }
    
    private func makeButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        button.center = view.center
        button.setTitle("PUSH ME", for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        view.addSubview(button)
    }
    @objc private func tapAction(){
        let postVC = PostViewController()
        present(postVC,animated: true)
    }
    
}

