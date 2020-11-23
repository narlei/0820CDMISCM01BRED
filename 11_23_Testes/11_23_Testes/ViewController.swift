//
//  ViewController.swift
//  11_23_Testes
//
//  Created by Narlei A Moreira on 23/11/20.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func actionButtonMessage(_ sender: Any) {
        labelOutput.text = "Funcionou galera!"
    }

    @IBOutlet var labelOutput: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
