//
//  ViewController.swift
//  10_21_Tuple
//
//  Created by Narlei A Moreira on 21/10/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let product = calcPrice(productValue: 100, percentProfit: 10)
        print(product.valueProfit)
        print(product.productWithProfit)
        
        var filters = (query: "", city: "", state: "")
        filters.query = "teste"

        
        var arrayFilters = [(query: String, city: String, state: Double)]()
        arrayFilters.append((query: "", city: "", state: 123))
        
        
//        var dictionary = ["query": "", "city": "", "state": ""]
//        dictionary["query"]
        
    }
    
    
    func calcPrice(productValue: Double, percentProfit: Double) -> (valueProfit: Double, productWithProfit: Double) {
        
        let valueProfit = (productValue * percentProfit) / 100
        
        let productWithProfit = productValue + valueProfit
        
        return (valueProfit: valueProfit, productWithProfit: productWithProfit)
        
    }


}

