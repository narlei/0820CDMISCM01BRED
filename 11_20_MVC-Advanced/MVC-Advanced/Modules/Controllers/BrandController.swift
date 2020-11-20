//
//  BrandController.swift
//  MVC-Advanced
//
//  Created by Narlei A Moreira on 19/11/20.
//

import Foundation
import Alamofire

class BrandController: ControllerProtocol {
    var arrayBrands = [Brand]()
    
    func getTitleForCell(at index: Int) -> String {
        return arrayBrands[index].name
    }

    func getViewTitle() -> String {
        return "Marcas"
    }

    func loadData(onComplete: @escaping (Bool) -> Void) {
        AF.request("\(Enviroment.apiBaseUrl)/carros/marcas").responseJSON { response in
            if let json = response.value as? [[String: Any]] {
                var brands = [Brand]()
                for item in json {
                    brands.append(Brand(fromDictionary: item))
                }
                self.arrayBrands = brands
                onComplete(true)
                return
            }
            onComplete(false)
        }
    }

    func getNumberOfRows() -> Int {
        return arrayBrands.count
    }

    func getNextController(index: Int) -> UIViewController {
        let controller =  ModelController(brand: arrayBrands[index])
        
        return DefaultListViewController.getView(controller: controller)
    }
}
