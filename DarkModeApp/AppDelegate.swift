//
//  AppDelegate.swift
//  DarkModeApp
//
//  Created by Carlos Carmo on 14/02/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        firstLaunchApp()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
   
    func firstLaunchApp() {
        if UserDefaults.standard.bool(forKey: "hasLaunchedBefore") {
            print("===> App já iniciada antes")
        } else {
            print("===> App iniciada pela primeira vez")
            UserDefaults.standard.set(true, forKey: "hasLaunchedBefore")
            UserDefaults.standard.set(false, forKey: "isNight")
        }
    }

}

