//
//  Order.swift
//  12_02_BancoDeDados
//
//  Created by Narlei A Moreira on 02/12/20.
//

import Foundation
import NAMDatabase

class Order: NAMObjectModel {
    @objc var date: String!
    @objc var value: String!
    @objc var personID: String!
}
