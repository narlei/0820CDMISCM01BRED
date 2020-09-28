//
//  ViewController.swift
//  09_28_TableView_Advanced_Review
//
//  Created by Narlei A Moreira on 28/09/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableViewDevelopers: UITableView!
    
    var arrayDevelopers = [Developer]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewDevelopers.delegate = self
        tableViewDevelopers.dataSource = self
        
        arrayDevelopers.append(Developer(name: "Narlei", profileImage: "dev_1.JPG"))
        arrayDevelopers.append(Developer(name: "Américo", profileImage: "dev_1.JPG"))
        arrayDevelopers.append(Developer(name: "Moreira", profileImage: "dev_1.JPG"))
        arrayDevelopers.append(Developer(name: "João", profileImage: "dev_1.JPG"))
        arrayDevelopers.append(Developer(name: "Jorge", profileImage: "dev_1.JPG"))
    }
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        arrayDevelopers.remove(at: indexPath.row)
        tableViewDevelopers.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayDevelopers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DeveloperCell", for: indexPath) as! DeveloperCell
        cell.setup(developer: arrayDevelopers[indexPath.row])
        
        return cell
    }
    
    
}
