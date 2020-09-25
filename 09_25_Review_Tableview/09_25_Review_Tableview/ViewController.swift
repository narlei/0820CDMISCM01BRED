//
//  ViewController.swift
//  09_25_Review_Tableview
//
//  Created by Narlei A Moreira on 25/09/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableViewList: UITableView!
    
    var arrayCars = ["GM", "VW", "Fiat", "Jeep", "BMW"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(arrayCars[indexPath.row])
        arrayCars.append("TEXTO QUALQUER")
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayCars[indexPath.row]
        cell.imageView?.image = UIImage(named: "147.png")
        return cell
    }
}
