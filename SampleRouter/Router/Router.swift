//
//  Router.swift
//  SampleRouter
//
//  Created by 佐藤瑠偉史 on 2021/09/24.
//

import Foundation
import UIKit

class Router {
    
    static let shared: Router = Router()
    private init() {}
    private var window: UIWindow?
    
    func showRoot(window: UIWindow?) {
        if !UserDefaults.standard.isLogined {
            let vc = FirstViewController.makeFromStoryboard()
            let nav = UINavigationController(rootViewController: vc)
            window?.rootViewController = nav
        } else {
            let vc = SecondViewController.makeFromStoryboard()
            let nav = UINavigationController(rootViewController: vc)
            window?.rootViewController = nav
        }
        
        window?.makeKeyAndVisible()
        self.window = window
    }
    
    func showSecond(from: UIViewController) {
        let vc = SecondViewController.makeFromStoryboard()
        show(from: from, next: vc)
    }
    
    func showThird(from: UIViewController) {
        let vc = ThirdViewController.makeFromStroyboard()
        show(from: from, next: vc)
    }
    
    func showRestart() {
        UserDefaults.standard.isLogined = [true, false].randomElement()!
        showRoot(window: window)
    }
}

extension Router {
    func show(from: UIViewController, next: UIViewController, animated: Bool = true) {
        if let nav = from.navigationController {
            nav.pushViewController(next, animated: animated)
        } else {
            from.present(next, animated: animated, completion: nil)
        }
    }
}
