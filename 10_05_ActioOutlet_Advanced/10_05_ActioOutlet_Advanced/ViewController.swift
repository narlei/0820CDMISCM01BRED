//
//  ViewController.swift
//  10_05_ActioOutlet_Advanced
//
//  Created by Narlei A Moreira on 05/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var labelName: MyLabel?
    @IBOutlet var buttonConfirm: UIButton?
    @IBOutlet weak var searchBarlala: UISearchBar?

    override func viewDidLoad() {
        super.viewDidLoad()
        labelName?.text = "Meu nome"
        buttonConfirm?.setTitle("Clique aqui", for: .normal)
    }

    @IBAction func actionButtonConfirm(_ sender: UIButton) {
        login(email: sender.title(for: .normal)!)
    }

    private func login(email: String) {
        print("Tentou logar \(email)")
    }
}
