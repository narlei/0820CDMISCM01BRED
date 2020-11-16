//
//  CarroController.swift
//  MVC
//
//  Created by Felipe Silva on 4/20/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import Foundation

class CarroController {
    private var carrosArray: [Carro?] = []

    func carregarCarros(completionHandler: (_ result: Bool, _ error: Error?) -> Void) {
        if let path = Bundle.main.path(forResource: "carros", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let jsonResult = jsonResult as? Dictionary<String, AnyObject>, let carros = jsonResult["carros"] as? [[String: Any]] {
                    for value in carros {
                        carrosArray.append(Carro(dicionario: value))
                    }

                    completionHandler(true, nil)
                }
            } catch {
                completionHandler(false, nil)
            }
        }
    }

    func numberOfRows() -> Int {
        return carrosArray.count
    }

    func numberOfSections() -> Int {
        return 1
    }

    func carregarCarro(indexPath: IndexPath) -> Carro? {
        return carrosArray[indexPath.row]
    }
}
