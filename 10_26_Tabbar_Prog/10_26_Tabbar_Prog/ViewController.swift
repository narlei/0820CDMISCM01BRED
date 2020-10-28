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
    
    @IBAction func actionOpenLink(_ sender: Any) {
        
        let google = Contact(title: "Abrir Google", url: "https://google.com")
        let email = Contact(title: "Abrir Email", url: "mailto://")
        let phone = Contact(title: "Abrir Telefone", url: "tel://")
        let message = Contact(title: "Abrir message", url: "message://")
        
        open(contact: message) 
        
    }
    
    func open(contact: Contact) {
        if let url = URL(string: contact.url) {
            UIApplication.shared.open(url)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
    }


}

