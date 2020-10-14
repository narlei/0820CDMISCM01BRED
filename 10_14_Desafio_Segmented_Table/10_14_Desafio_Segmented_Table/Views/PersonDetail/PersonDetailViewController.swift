//
//  PersonDetailViewController.swift
//  10_14_Desafio_Segmented_Table
//
//  Created by Narlei A Moreira on 14/10/20.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    var arrayItems = [Person]()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    static func getController() -> PersonDetailViewController? {
        if let viewDetail = UIStoryboard(name: "PersonDetail", bundle: nil).instantiateInitialViewController() as? PersonDetailViewController {
            return viewDetail
        }
        return nil
    }

}
