//
//  City.swift
//  10_16_CitiesList
//
//  Created by Narlei A Moreira on 16/10/20.
//

import Foundation

protocol SearchableProtocol {
    func getTerm() -> String
}

class City {
    var nome: String
    var estado: String
    var pais: String
    
    init(nome: String, estado: String, pais: String) {
        self.nome = nome
        self.estado = estado
        self.pais = pais
    }
}

extension City: SearchableProtocol {
    func getTerm() -> String {
        return "\(nome) \(estado) \(pais)".lowercased()
    }
}
