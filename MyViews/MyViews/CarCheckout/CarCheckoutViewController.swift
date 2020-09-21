//
//  CarCheckoutViewController.swift
//  MyViews
//
//  Created by Narlei A Moreira on 21/09/20.
//

import UIKit

class CarCheckoutViewController: UIViewController {

    @IBAction func actionButtonQuit(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Comprar"
    }
    

}
