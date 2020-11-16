//
//  File.swift
//  MVC
//
//  Created by Felipe Silva on 4/20/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import Foundation


class Carro {
    
    var id: Int?
    var modelo: String?
    var ano: Int?
    var cor: String?
    var imagem: String?
    
    init (dicionario:[String:Any]) {
        
        self.id = dicionario["id"] as? Int
        self.modelo = dicionario["modelo"] as? String
        self.ano = dicionario["ano"] as? Int
        self.cor = dicionario["cor"] as? String
        self.imagem = dicionario["imagem"] as? String
    }
}
