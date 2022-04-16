//
//  AppDelegate.swift
//  Navigation
//
//  Created by z on 4/16/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MainUITabBarController()
        window?.makeKeyAndVisible()
      
        return true
    }
}
