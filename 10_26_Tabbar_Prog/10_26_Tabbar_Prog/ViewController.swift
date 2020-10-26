//
//  ViewController.swift
//  10_26_Tabbar_Prog
//
//  Created by Narlei A Moreira on 26/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func actionChangeMain(_ sender: Any) {
        
        let vc = UIViewController()
        vc.view.backgroundColor = .brown
        
        
        UIViewController.replaceRootViewController(viewController: vc)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

