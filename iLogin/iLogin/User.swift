//
//  User.swift
//  iLogin
//
//  Created by Narlei A Moreira on 16/09/20.
//  Copyright © 2020 Narlei A Moreira. All rights reserved.
//

import Foundation

class User {
    var email: String
    var password: String
    
    init(email: String, senha: String) {
        self.email = email
        self.password = senha
    }
    
    static func sayHello() {
        print("Hello")
    }
}
