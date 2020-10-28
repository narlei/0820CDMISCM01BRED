//
//  ViewController.swift
//  aler
//
//  Created by Narlei A Moreira on 28/10/20.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var buttonAction: UIButton!
    
    @IBAction func openAlert() {
        let alert = UIAlertController(title: "Atenção",
                                      message: "Isto é um alerta!",
                                      preferredStyle: .alert)
        
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            print("Apertou OK")
        }))
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: { (action) in
            print("Apertou OK")
        }))
        
        alert.addAction(UIAlertAction(title: "Mais um", style: .default, handler: { (action) in
            print("Apertou OK")
        }))
        
        present(alert, animated: true, completion: nil)
    }

    @IBAction func openAlertInput() {
        let alert = UIAlertController(title: "TITULO",
                                      message: "MESSAGE",
                                      preferredStyle: .alert)
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "placeholder"
        })
        let cancelButton = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        let addButton = UIAlertAction(title: "OK", style: .default) { _ in
            let textField = alert.textFields?.first
        }
        alert.addAction(cancelButton)
        alert.addAction(addButton)
        present(alert, animated: true, completion: nil)
    }

    @IBAction func openActionSheet() {
        
        
        let alert = UIAlertController(title: "Atenção",
                                      message: "Escolha a opção",
                                      preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Coxinha", style: .default, handler: { (action) in
            print("Coxinha")
        }))
        
        alert.addAction(UIAlertAction(title: "Kibe", style: .default, handler: { (action) in
            print("Kibe")
        }))
        
        alert.addAction(UIAlertAction(title: "Risoles", style: .default, handler: { (action) in
            print("Risoles")
        }))
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action) in
            print("Cancelar")
        }))
        
        alert.addAction(UIAlertAction(title: "Nenhuma, ainda é cedo", style: .destructive, handler: { (action) in
            print("Nenhuma")
        }))
        
        
        
        present(alert, animated: true, completion: nil)
        
    }
}
