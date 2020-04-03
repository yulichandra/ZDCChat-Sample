//
//  AppDelegate.swift
//  Zendesk Sample
//
//  Created by Yuli Chandra on 03/04/20.
//  Copyright © 2020 Yuli Chandra. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        ZendeskManager.initialize()
        setRoot()
        return true
    }
    
    func setRoot() {
        let vc = ViewController()
        let navController = UINavigationController(rootViewController: vc)
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = .white
        window.rootViewController = navController
        window.makeKeyAndVisible()
        self.window = window
    }
}


