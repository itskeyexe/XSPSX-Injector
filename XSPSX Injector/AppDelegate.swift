//
//  AppDelegate.swift
//  XSPSX Injector
//
//  Created by Wyatt Kerkes on 11/19/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Perform any initial setup after application launch here.

        // Example: Setting up the root view controller
        // window = UIWindow(frame: UIScreen.main.bounds)
        // window?.rootViewController = YourInitialViewController()
        // window?.makeKeyAndVisible()

        return true
    }

    // This method is called when your app is opened via a URL with the custom scheme
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        if url.scheme == "xspsxinjectorapp" {
            // Handle the URL appropriately
            // For example, you might want to check the host or path of the URL
            // let host = url.host
            // let path = url.path

            // Implement the specific logic you want your app to perform when opened with this URL
            print("App opened with URL: \(url)")

            // Return true to indicate successful handling of the URL
            return true
        }

        // If the URL scheme is not what your app expects, return false
        return false
    }

    // MARK: UISceneSession Lifecycle (if using UIKit with Scenes)
    
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

    // Other AppDelegate methods as needed...

}

