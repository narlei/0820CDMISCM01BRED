//
//  ViewController.swift
//  09_28_TableView_Expert
//
//  Created by Narlei A Moreira on 28/09/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableViewList: UITableView!
    var arrayCars = ["GM", "Fiat", "Jeep", "Ferrari", "Ford", "GM", "Fiat", "Jeep", "Ferrari", "Ford", "GM", "Fiat", "Jeep", "Ferrari", "Ford", "GM", "Fiat", "Jeep", "Ferrari", "Ford", "GM", "Fiat", "Jeep", "Ferrari", "Ford", "GM", "Fiat", "Jeep", "Ferrari", "Ford"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        arrayCars.remove(at: indexPath.row)
        tableViewList.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCars.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCustom", for: indexPath) as! MyCustomCell

        cell.setup(title: arrayCars[indexPath.row])

        return cell
    }
}
