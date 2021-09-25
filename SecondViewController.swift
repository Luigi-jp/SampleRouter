//
//  SecondViewController.swift
//  SampleRouter
//
//  Created by 佐藤瑠偉史 on 2021/09/25.
//

import UIKit

class SecondViewController: UIViewController {
        
    static func makeFromStoryboard() -> SecondViewController {
        let vc = UIStoryboard.secondViewController
        return vc
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        Router.shared.showThird(from: self)
    }
}
