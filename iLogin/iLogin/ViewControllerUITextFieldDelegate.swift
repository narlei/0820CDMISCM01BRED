//
//  ViewControllerUITextFieldDelegate.swift
//  iLogin
//
//  Created by Narlei A Moreira on 16/09/20.
//  Copyright © 2020 Narlei A Moreira. All rights reserved.
//

import Foundation
import UIKit


extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == textFieldEmail {
            if let email = textFieldEmail.text, !email.isEmpty {
                print(userExists(email: email))
                UIAlertController.alert(message: "Usuário existe", viewController: self)
            }
        }
    }
}
