//
//  UITextFieldExtensions.swift
//  iLogin
//
//  Created by Narlei A Moreira on 16/09/20.
//  Copyright © 2020 Narlei A Moreira. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    func isEmpty() -> Bool {
        if text == nil || text!.isEmpty {
            return true
        }
        
        return false
    }
}
