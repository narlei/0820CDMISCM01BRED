//
//  ViewController.swift
//  ExecTextFieldDelegate
//
//  Created by Narlei A Moreira on 14/09/20.
//  Copyright © 2020 Narlei A Moreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldNome: UITextField!
    @IBOutlet weak var textFieldCargo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldNome.delegate = self
        textFieldCargo.delegate = self
    }
    
    private func validaInformacoes() -> Bool {
        if textFieldNome.text == nil || textFieldNome.text!.isEmpty {
            print("Falta o nome")
            
            // Comeca alerta
            let alert = UIAlertController(title: "Atenção", message: "Falta o nome", preferredStyle: .alert)

            let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
            }
            alert.addAction(okAction)
            self.present(alert, animated: true) {
               
            }
            // Termina alerta
            
            
            return false
        }
        if textFieldCargo.text == nil || textFieldCargo.text!.isEmpty {
            print("Falta o cargo")
            
            // Comeca alerta
            let alert = UIAlertController(title: "Atenção", message: "Falta o cargo", preferredStyle: .alert)

            let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
            }
            alert.addAction(okAction)
            self.present(alert, animated: true) {
               
            }
            // Termina alerta
            
            return false
        }
        
        return true
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textFieldNome {
            textFieldCargo.becomeFirstResponder()
        } else {
            if validaInformacoes() {
                textField.resignFirstResponder()
            }
        }
        return true
    }
}
