//
//  FirstViewController.swift
//  SampleRouter
//
//  Created by 佐藤瑠偉史 on 2021/09/24.
//

import UIKit

class FirstViewController: UIViewController {
    
    static func makeFromStoryboard() -> FirstViewController {
        let vc = UIStoryboard.firstViewController
        return vc
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func nextButtonPressed(_ sender: UIButton) {
        Router.shared.showSecond(from: self)
    }
    

}
