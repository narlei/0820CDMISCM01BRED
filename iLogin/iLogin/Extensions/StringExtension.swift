//
//  StringExtension.swift
//  iLogin
//
//  Created by Narlei A Moreira on 16/09/20.
//  Copyright © 2020 Narlei A Moreira. All rights reserved.
//

import Foundation

extension String {
    func isValidPassword() -> Bool {
        let password = self
        if password.count > 5 {
            return true
        }
        return false
    }
}
