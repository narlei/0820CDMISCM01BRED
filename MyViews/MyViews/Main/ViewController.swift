//
//  ViewController.swift
//  MyViews
//
//  Created by Narlei A Moreira on 21/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func actionOpenModal(_ sender: Any) {
        
        if let viewControllerDetail = UIStoryboard(name: "CarDetail", bundle: nil).instantiateInitialViewController() as? CarDetailViewController {
            // Abre Navigation
            navigationController?.pushViewController(viewControllerDetail, animated: true)
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

