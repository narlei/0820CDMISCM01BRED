//
//  Cart.swift
//  11_23_Testes
//
//  Created by Narlei A Moreira on 23/11/20.
//

import Foundation

class Cart {
    var value: Double

    init(value: Double) {
        self.value = value
    }

    func applyDiscount(money: Double) {
        value = value - money

        if value < 0 {
            value = 0
        }
        
    }
}
