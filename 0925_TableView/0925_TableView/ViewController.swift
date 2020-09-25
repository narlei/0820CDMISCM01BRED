//
//  ViewController.swift
//  0925_TableView
//
//  Created by Narlei A Moreira on 25/09/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableViewList: UITableView!

//    let arrayPets = ["Lola", "Nino", "Atormentado", "Chulinho", "Filó", "Milu", "Amora", "Lulu"]
    var arrayPets = [Pet]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
        
        arrayPets.append(Pet(name: "Lola", color: .black))
        arrayPets.append(Pet(name: "Nino", color: .blue))
        arrayPets.append(Pet(name: "Atormentado", color: .red))
        arrayPets.append(Pet(name: "Chulinho", color: .brown))
        arrayPets.append(Pet(name: "Filó", color: .cyan))
        arrayPets.append(Pet(name: "Milu", color: .gray))
        arrayPets.append(Pet(name: "Amora", color: .green))
        arrayPets.append(Pet(name: "Lulu", color: .systemBlue))
        
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pet = arrayPets[indexPath.row]
        print("Selecionou \(pet)")

        if let petDetailView = PetDetailViewController.getViewController() {
            petDetailView.pet = pet
            present(petDetailView, animated: true, completion: nil)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPets.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.accessoryType = .detailDisclosureButton
        
        cell.imageView?.image = UIImage(named: "pet.jpg")
        
        cell.textLabel?.text = arrayPets[indexPath.row].name
        return cell
    }
}
