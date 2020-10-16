//
//  ViewController.swift
//  10_16_CitiesList
//
//  Created by Narlei A Moreira on 16/10/20.
//

import UIKit

enum FilterOption {
    static let state = 0
    static let country = 1
}

class ViewController: UIViewController {
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var tableViewCities: UITableView!
    @IBOutlet var pickerViewFilter: UIPickerView!

    var arrayCities = [City]()
    var arrayCitiesFiltered = [City]()

    var arrayStates = [String]()
    var arrayCountries = [String]()

    var filterQuery = ""
    var filterState = "Todos"
    var filterCountry = "Todos"

    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewCities.delegate = self
        tableViewCities.dataSource = self

        searchBar.delegate = self

        pickerViewFilter.delegate = self
        pickerViewFilter.dataSource = self

        loadAllData()
    }

    private func loadAllData() {
        arrayCities = [City]()
        arrayCitiesFiltered = [City]()

        arrayCities.append(City(nome: "Florianopolis", estado: "SC", pais: "Brasil"))
        arrayCities.append(City(nome: "Blumenau", estado: "SC", pais: "Brasil"))
        arrayCities.append(City(nome: "Timbó", estado: "SC", pais: "Brasil"))
        arrayCities.append(City(nome: "Biguaçu", estado: "SC", pais: "Brasil"))
        arrayCities.append(City(nome: "Coqueiros", estado: "SC", pais: "Brasil"))

        arrayCities.append(City(nome: "São Paulo", estado: "SP", pais: "Brasil"))
        arrayCities.append(City(nome: "Olímpia", estado: "SP", pais: "Brasil"))
        arrayCities.append(City(nome: "Campinas", estado: "SP", pais: "Brasil"))
        arrayCities.append(City(nome: "Santos", estado: "SP", pais: "Brasil"))
        arrayCities.append(City(nome: "São carlos", estado: "SP", pais: "Brasil"))

        arrayCities.append(City(nome: "Aracaju", estado: "SE", pais: "Brasil"))
        arrayCities.append(City(nome: "Itabaiana", estado: "SE", pais: "Brasil"))
        arrayCities.append(City(nome: "Roraima", estado: "SE", pais: "Brasil"))
        arrayCities.append(City(nome: "Tobias Barreto", estado: "SE", pais: "Brasil"))
        arrayCities.append(City(nome: "Itabaianinha", estado: "SE", pais: "Brasil"))

        arrayCitiesFiltered.append(contentsOf: arrayCities)
        loadFilters()
    }

    private func loadData() {
        arrayCitiesFiltered = [City]()
        if !filterQuery.isEmpty {
            arrayCitiesFiltered = arrayCities.filter { (city) -> Bool in
                city.getTerm().contains(filterQuery.lowercased())
            }
        } else {
            arrayCitiesFiltered.append(contentsOf: arrayCities)
        }
        
        if filterState != "Todos" {
            arrayCitiesFiltered = arrayCitiesFiltered.filter({ (city) -> Bool in
                return city.estado == filterState
            })
        }
        
        if filterCountry != "Todos" {
            arrayCitiesFiltered = arrayCitiesFiltered.filter({ (city) -> Bool in
                return city.pais == filterCountry
            })
        }

        loadFilters()
        tableViewCities.reloadData()
    }

    private func loadFilters() {
        let states = arrayCities.map { (city) -> String in
            city.estado
        }

        let countries = arrayCities.map { (city) -> String in
            city.pais
        }
        arrayStates = ["Todos"]
        arrayStates.append(contentsOf: Array(Set(states)))
        
        arrayCountries = ["Todos"]
        arrayCountries.append(contentsOf: Array(Set(countries)))
        
        pickerViewFilter.reloadAllComponents()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let city = arrayCitiesFiltered[indexPath.row]
        if let viewDetail: CityDetailViewController = CityDetailViewController.getModule() {
            viewDetail.city = city
            present(viewDetail, animated: true, completion: nil)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCitiesFiltered.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell", for: indexPath) as! CityCell

        cell.setup(city: arrayCitiesFiltered[indexPath.row])

        return cell
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterQuery = searchText
        loadData()
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == FilterOption.state {
            filterState = arrayStates[row]
        } else {
            filterCountry = arrayCountries[row]
        }
        loadData()
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == FilterOption.state {
            return arrayStates.count
        } else {
            return arrayCountries.count
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == FilterOption.state {
            return arrayStates[row]
        } else {
            return arrayCountries[row]
        }
    }
}
