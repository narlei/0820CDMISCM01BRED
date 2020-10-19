//
//  ViewController.swift
//  10_19_Closure
//
//  Created by Narlei A Moreira on 19/10/20.
//

import UIKit

class ViewController: UIViewController {
    var arrayList = [String]()

    @IBOutlet weak var labelOption: UILabel!
    
    func susanCompraFarinha(marca: String, ligacao: (_ marcaSugerida: String) -> Bool) {
        // Chegar mercado
        // Esqueceu a marca

        print("Marca DonaBenta, mão respondeu que \(ligacao("Dona Benta"))")

        print("Marca Girassol, mão respondeu que \(ligacao("Girassol"))")

        // Susan lembrou
        print("Marca \(marca), mão respondeu que \(ligacao(marca))")

        // Volta pra casa
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Dona Maria
        susanCompraFarinha(marca: "Nordeste") { (marcaSugerida) -> Bool in
            if marcaSugerida == "Nordeste" {
                return true
            }
            return false
        }

        print("Vai Carregar")
        loadData(nome: "LJAHSDHAS") { _ in
            print("carregou")
        }
        print("Ainda Vai Carregar")

        print(1)
        filterArray(array: ["A", "B", "C", "A", "B", "C", "A", "B", "C"], query: "j") { find in
            print("encontrou \(find)")
        }
        print(2)
    }

    @IBAction func actionSelectOption(_ sender: Any) {
        if let viewDetail = DetailViewController.getController() {
            viewDetail.setCompletion { (option) in
                self.labelOption.text = "Opção escolhida: \(option)"
            }

            present(viewDetail, animated: true, completion: nil)
        }
    }

    func loadData(nome: String, onComplete: @escaping (_ arrayNomes: [String]) -> Void) {
        // Trazer os dados da internet

        DispatchQueue.global(qos: .background).async {
            // Acabei de receber da internet
            let arrayRetornadoDaInternet = ["B", "C", "E"]
            onComplete(arrayRetornadoDaInternet)
        }
    }

    func filterArray(array: [String], query: String, onFilter: @escaping (_ find: Bool) -> Void) {
        DispatchQueue.global(qos: .background).async {
            for item in array {
                if item.lowercased() == query.lowercased() {
                    onFilter(true)
                    return
                }
            }
            onFilter(false)
        }
    }
}
