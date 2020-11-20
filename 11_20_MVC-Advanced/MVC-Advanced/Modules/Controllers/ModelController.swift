//
//  ModelController.swift
//  MVC-Advanced
//
//  Created by Narlei A Moreira on 19/11/20.
//

import Alamofire
import Foundation

class ModelController: ControllerProtocol {
    var selectedBrand: Brand

    init(brand: Brand) {
        selectedBrand = brand
    }

    var arrayModels = [Model]()

    func getTitleForCell(at index: Int) -> String {
        return arrayModels[index].name
    }

    func getViewTitle() -> String {
        return "Modelos \(selectedBrand.name!)"
    }

    func loadData(onComplete: @escaping (Bool) -> Void) {
        AF.request("\(Enviroment.apiBaseUrl)/carros/marcas/\(selectedBrand.id!)/modelos").responseJSON { response in
            if let json = response.value as? [String: Any], let jsonModels = json["modelos"] as? [[String: Any]] {
                var models = [Model]()
                for item in jsonModels {
                    models.append(Model(fromDictionary: item))
                }
                self.arrayModels = models
                onComplete(true)
                return
            }
            onComplete(false)
        }
    }

    func getNumberOfRows() -> Int {
        return arrayModels.count
    }

    func getNextController(index: Int) -> UIViewController {
        let nextController =  ModelYearController(brand: selectedBrand, model: arrayModels[index])
        return DefaultListViewController.getView(controller: nextController)
    }
}
