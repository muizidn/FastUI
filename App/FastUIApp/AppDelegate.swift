//
//  AppDelegate.swift
//  ExampleApp
//
//  Created by Muis on 20/01/20.
//

import UIKit
import FastUI8

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UIHostingController(rootView: ContentView())
//        window.rootViewController = TestC()
        window.makeKeyAndVisible()
        self.window = window
        return true
    }

}

