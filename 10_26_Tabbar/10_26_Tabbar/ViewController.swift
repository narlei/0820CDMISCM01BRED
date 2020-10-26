//
//  ViewController.swift
//  10_26_Tabbar
//
//  Created by Narlei A Moreira on 26/10/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func open() {
        UIApplication.shared.open(URL(string: "https://google.com")!)
        
        
        UIApplication.shared.open(URL(string: "mailto://email@com.br")!)

        // Call phone scheme url swift
        
        
        
        
    }


}

