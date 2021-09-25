//
//  ThirdViewController.swift
//  SampleRouter
//
//  Created by 佐藤瑠偉史 on 2021/09/25.
//

import UIKit

class ThirdViewController: UIViewController {
    
    static func makeFromStroyboard() -> ThirdViewController {
        let vc = UIStoryboard.thirdViewController
        return vc
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func restartButtonPressed(_ sender: Any) {
        Router.shared.showRestart()
    }
}
