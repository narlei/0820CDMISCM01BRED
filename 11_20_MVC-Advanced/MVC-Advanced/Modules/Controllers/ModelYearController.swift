//
//  ModelYearController.swift
//  MVC-Advanced
//
//  Created by Narlei A Moreira on 19/11/20.
//

import Foundation
import Alamofire

class ModelYearController: ControllerProtocol {
    var selectedBrand: Brand
    var selectedModel: Model

    init(brand: Brand, model: Model) {
        selectedBrand = brand
        selectedModel = model
    }

    var arrayYears = [ModelYear]()

    func getTitleForCell(at index: Int) -> String {
        return arrayYears[index].name
    }

    func getViewTitle() -> String {
        return "Ano - \(selectedModel.name!)"
    }

    func loadData(onComplete: @escaping (Bool) -> Void) {
        AF.request("\(Enviroment.apiBaseUrl)/carros/marcas/\(selectedBrand.id!)/modelos/\(selectedModel.id!)/anos").responseJSON { response in
            if let json = response.value as? [[String: Any]]{
                var years = [ModelYear]()
                for item in json {
                    years.append(ModelYear(fromDictionary: item))
                }
                self.arrayYears = years
                onComplete(true)
                return
            }
            onComplete(false)
        }
    }

    func getNumberOfRows() -> Int {
        return arrayYears.count
    }

    func getNextController(index: Int) -> UIViewController {
        let nextController =  CarController(brand: selectedBrand, model: selectedModel, year: arrayYears[index])
        return DefaultListViewController.getView(controller: nextController)
    }

}
