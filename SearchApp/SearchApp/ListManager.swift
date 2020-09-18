//
//  ListManager.swift
//  SearchApp
//
//  Created by Narlei A Moreira on 18/09/20.
//

import Foundation

protocol ListManagerDelegate {
    func didLoadList(array: [String])
}

class ListManager {
    var delegate: ListManagerDelegate?
}


