//
//  UIAlertControllerExtension.swift
//  iLogin
//
//  Created by Narlei A Moreira on 16/09/20.
//  Copyright © 2020 Narlei A Moreira. All rights reserved.
//

import Foundation
import UIKit

extension UIAlertController {
    static func alert(message: String, viewController: UIViewController) {
        let alert = UIAlertController(title: "Atenção", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
        }
        alert.addAction(okAction)
        viewController.present(alert, animated: true) {
        }
    }
}
