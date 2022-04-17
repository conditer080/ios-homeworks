//
//  ViewController.swift
//  Navigation
//
//  Created by z on 4/16/22.
//

import UIKit

struct Post { var title: String }
let post = Post(title: "Hello little friend")


class FeedViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(red: 0.3, green: 0.6, blue: 0.1, alpha: 1)
        makeButton()
        makeBarLeft()
    }
    
    private func makeBarLeft() {
        let barLeft = UIBarButtonItem(title: "info", style: .plain, target: self, action: #selector(tapActionLeft))
        navigationItem.leftBarButtonItem = barLeft
    }
    @objc private func tapActionLeft() {
        let infoVC = infoViewController()
       // navigationController?.pushViewController(infoVC, animated: true)
        present(infoVC, animated: true)
    }
    
    private func makeButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        button.center = view.center
        button.setTitle("PUSH ME", for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func tapAction() {
        let postVC = PostViewController()
       navigationController?.pushViewController(postVC, animated: true)
    }
}

