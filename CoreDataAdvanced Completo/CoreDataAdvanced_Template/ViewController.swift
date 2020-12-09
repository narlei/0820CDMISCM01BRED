//
//  ViewController.swift
//  CoreDataAdvanced_Template
//
//  Created by Nadilson Santana on 19/07/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var personText: UITextField!
    @IBOutlet weak var passportText: UITextField!

    let dataManager = DataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        loadData()
    }
    
    func loadData() {
        dataManager.loadInformation { (paulosBit) in
            dataManager.arrayPerson = paulosBit
            self.tableView.reloadData()
        }
    }
    
    
    @IBAction func btnAdd() {
        dataManager.saveInformation(name: personText.text ?? "", passportNumber: passportText.text ?? "")
        self.loadData()
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.arrayPerson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") {
            cell.textLabel?.text = dataManager.arrayPerson[indexPath.row].name
            cell.detailTextLabel?.text = dataManager.arrayPerson[indexPath.row].passport?.number
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        dataManager.delete(id: dataManager.arrayPerson[indexPath.row].objectID) { (success) in
            if success {
                self.loadData()
            } else {
                print("deu ruim")
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewController = self.storyboard?.instantiateViewController(withIdentifier: "Car") as? CarViewController {
            viewController.person = dataManager.arrayPerson[indexPath.row]
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

