//
//  ViewController.swift
//  MVC
//
//  Created by Felipe Silva on 4/20/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import UIKit

class CarrosViewController: UIViewController {
    @IBOutlet private var carroTableView: UITableView!
    private var controller: CarroController?

    override func viewDidLoad() {
        super.viewDidLoad()
        controller = CarroController()

        carroTableView.delegate = self
        carroTableView.dataSource = self

        carroTableView.register(UINib(nibName: "CarroCell", bundle: nil), forCellReuseIdentifier: "CarroCell")

        loadData()
    }

    func loadData() {
        controller?.carregarCarros(completionHandler: { success, _ in
            if success {
                self.carroTableView.reloadData()
            }
        })
    }
}

extension CarrosViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller?.numberOfRows() ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CarroCell = tableView.dequeueReusableCell(withIdentifier: "CarroCell") as! CarroCell
        cell.configCell(model: controller?.carregarCarro(indexPath: indexPath))

        return cell
    }
}
