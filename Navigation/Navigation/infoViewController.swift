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
        view.backgroundColor = .init(red: 0.6, green: 0.6, blue: 0.8, alpha: 1)
        makeButton()
    }
    
    private func makeButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        button.center = view.center
        button.setTitle("guess what", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        button.layer.cornerRadius = 8
        view.addSubview(button)
    }
    
    @objc private func tapAction() {
        let alert = UIAlertController(title: "\(post)", message: "send post?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "send", style: .default) {_ in print("\(post)")}
        let cancelAction = UIAlertAction(title: "cancel", style: .default) {_ in self.dismiss(animated: true)}
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
    
    
    
}
