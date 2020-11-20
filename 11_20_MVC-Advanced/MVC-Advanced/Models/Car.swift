//
//  Car.swift
//  MVC-Advanced
//
//  Created by Narlei A Moreira on 19/11/20.
//

import Foundation

class Car: NSObject {
    var anoModelo: Int!
    var codigoFipe: String!
    var combustivel: String!
    var marca: String!
    var mesReferencia: String!
    var modelo: String!
    var siglaCombustivel: String!
    var tipoVeiculo: Int!
    var valor: String!

    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String: Any]) {
        anoModelo = dictionary["AnoModelo"] as? Int
        codigoFipe = dictionary["CodigoFipe"] as? String
        combustivel = dictionary["Combustivel"] as? String
        marca = dictionary["Marca"] as? String
        mesReferencia = dictionary["MesReferencia"] as? String
        modelo = dictionary["Modelo"] as? String
        siglaCombustivel = dictionary["SiglaCombustivel"] as? String
        tipoVeiculo = dictionary["TipoVeiculo"] as? Int
        valor = dictionary["Valor"] as? String
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String: Any] {
        var dictionary = [String: Any]()
        if anoModelo != nil {
            dictionary["AnoModelo"] = anoModelo
        }
        if codigoFipe != nil {
            dictionary["CodigoFipe"] = codigoFipe
        }
        if combustivel != nil {
            dictionary["Combustivel"] = combustivel
        }
        if marca != nil {
            dictionary["Marca"] = marca
        }
        if mesReferencia != nil {
            dictionary["MesReferencia"] = mesReferencia
        }
        if modelo != nil {
            dictionary["Modelo"] = modelo
        }
        if siglaCombustivel != nil {
            dictionary["SiglaCombustivel"] = siglaCombustivel
        }
        if tipoVeiculo != nil {
            dictionary["TipoVeiculo"] = tipoVeiculo
        }
        if valor != nil {
            dictionary["Valor"] = valor
        }
        return dictionary
    }
}
