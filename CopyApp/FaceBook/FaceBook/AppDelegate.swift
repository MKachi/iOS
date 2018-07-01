//
//  AppDelegate.swift
//  FaceBook
//
//  Created by 김동영 on 2018. 6. 27..
//  Copyright © 2018년 김동영. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let controller = MainVC(collectionViewLayout: UICollectionViewFlowLayout())
        let navigationController = UINavigationController(rootViewController: controller)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        UINavigationBar.appearance().barTintColor = UIColor(named: "FaceBookBlue")
        application.statusBarStyle = .lightContent
        
        return true
    }
}
