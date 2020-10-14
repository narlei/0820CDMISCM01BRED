//
//  ViewController.swift
//  10_14_Desafio_Segmented_Table
//
//  Created by Narlei A Moreira on 14/10/20.
//

import UIKit

enum Enviroments {
    static let apiKey = "ASLKDJHASHDKJAHSD"
}

enum FilterSection {
    static let person = 0
    static let developer = 1
}

class ViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var segmentedControlFilter: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    var arrayItems = [Person]()
    
    // MARK: Action
    @IBAction func changedSegmentedControlFilter(_ sender: Any) {
        loadData()
        
        
    }
    
    private func loadData() {
        if segmentedControlFilter.selectedSegmentIndex == FilterSection.person {
            loadPerson()
        } else {
            loadDeveloper()
        }
    }
    
    private func loadDataFromApi() {
        let array = Global.shared.arrayItems
        
        arrayItems = array
    }
    
    func saveNameLocal() {
        Global.shared.name = "Teste"
    }
    
    private func loadPerson() {
        arrayItems = [Person]()
        arrayItems.append(Person(name: "Lara", imagePath: "", age: 10))
        arrayItems.append(Person(name: "Lara", imagePath: "", age: 10))
        arrayItems.append(Person(name: "Lara", imagePath: "", age: 10))
        arrayItems.append(Person(name: "Lara", imagePath: "", age: 10))
        arrayItems.append(Person(name: "Lara", imagePath: "", age: 10))
        arrayItems.append(Person(name: "Lara", imagePath: "", age: 10))
        arrayItems.append(Person(name: "Lara", imagePath: "", age: 10))
        tableView.reloadData()
    }
    
    private func loadDeveloper() {
        arrayItems = [Person]()
        arrayItems.append(Developer(name: "Steve", imagePath: "", age: 35, arrayLanguages: ["MKT"]))
        arrayItems.append(Developer(name: "Steve", imagePath: "", age: 35, arrayLanguages: ["MKT"]))
        arrayItems.append(Developer(name: "Steve", imagePath: "", age: 35, arrayLanguages: ["MKT"]))
        arrayItems.append(Developer(name: "Steve", imagePath: "", age: 35, arrayLanguages: ["MKT"]))
        arrayItems.append(Developer(name: "Steve", imagePath: "", age: 35, arrayLanguages: ["MKT"]))
        arrayItems.append(Developer(name: "Steve", imagePath: "", age: 35, arrayLanguages: ["MKT"]))
        tableView.reloadData()
    }
    
    // MARK: LifeCicle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        loadData()
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewDetail = PersonDetailViewController.getController() {
            if let developer = arrayItems[indexPath.row] as? Developer {
                navigationController?.pushViewController(viewDetail, animated: true)
            } else {
                present(viewDetail, animated: true, completion: nil)
            }
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath) as! PersonCell
        let object = arrayItems[indexPath.row]
        cell.setup(person: object)
        return cell
    }
}
