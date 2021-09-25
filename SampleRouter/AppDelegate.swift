//
//  AppDelegate.swift
//  SampleRouter
//
//  Created by 佐藤瑠偉史 on 2021/09/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Router.shared.showRoot(window: UIWindow.init(frame: UIScreen.main.bounds))
        return true
    }
}

