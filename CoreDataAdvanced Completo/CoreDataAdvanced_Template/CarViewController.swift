//
//  CarViewController.swift
//  CoreDataAdvanced_Template
//
//  Created by Nadilson Santana on 19/07/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import UIKit

class CarViewController: UIViewController {

    @IBOutlet weak var carTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!

    var person: Person?
    let dataManager = DataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func loadData(){
        dataManager.loadCar(id: person!.objectID) { (erikasCar) in
            dataManager.arrayCar = erikasCar
            tableView.reloadData()
        }
    }
    
    @IBAction func btnAdd(_ sender: Any) {
        dataManager.saveCar(modelName: carTextField.text ?? "", id: person!.objectID) { (success) in
            if success {
                loadData()
            } else {
                print ("Deu Ruim brasilll!!!!")
            }
        }
    }

}

extension CarViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.arrayCar.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") {
            cell.textLabel?.text = dataManager.arrayCar[indexPath.row].modelName
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        dataManager.delete(id: dataManager.arrayCar[indexPath.row].objectID) { (success) in
            if success {
                self.loadData()
            } else {
                print("deu ruim")
            }
        }
    }

    
}
