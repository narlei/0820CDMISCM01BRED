//
//  ViewController.swift
//  MyViewsTrainning
//
//  Created by Narlei A Moreira on 21/09/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func actionButtonOne(_ sender: Any) {
        if let viewOne = UIStoryboard(name: "MyViewOne", bundle: nil).instantiateInitialViewController() as? MyViewOneViewController {
            navigationController?.pushViewController(viewOne, animated: true)
        }
    }
    
    @IBAction func actionButtonTwo(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

