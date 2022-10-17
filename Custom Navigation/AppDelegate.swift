//
//  AppDelegate.swift
//  Custom Navigation
//
//  Created by Ivan Zakharchenko on 17/10/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let vc = FirstScreenNavigationController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }


}

