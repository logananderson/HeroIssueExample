//
//  ViewController.swift
//  HeroImageIssue
//
//  Created by Logan Anderson on 5/22/20.
//  Copyright © 2020 Logan Anderson. All rights reserved.
//

import Hero
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var textFieldA: UITextField!
    @IBOutlet weak var textFieldB: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        guard let nextVc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "viewController") as? ViewController else {
            return
        }
        navigationController?.hero.isEnabled = true
        nextVc.hero.isEnabled = true
        self.hero.isEnabled = true
        navigationController?.heroNavigationAnimationType = .autoReverse(presenting: .slide(direction: .left))
        _ = nextVc.view
        
        
        bgImageView.hero.id = "bgImageView"
        nextVc.bgImageView.hero.id = "bgImageView"

        navigationController?.pushViewController(nextVc, animated: true)
    }
    
}

