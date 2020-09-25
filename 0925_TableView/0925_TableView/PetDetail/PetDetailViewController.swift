//
//  PetDetailViewController.swift
//  0925_TableView
//
//  Created by Narlei A Moreira on 25/09/20.
//

import UIKit

class PetDetailViewController: UIViewController {
    @IBOutlet var labelTitle: UILabel!
    @IBAction func actionButtonClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    var pet: Pet?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let pet = pet {
            labelTitle.text = pet.name
            view.backgroundColor = pet.color
        }
    }

    static func getViewController() -> PetDetailViewController? {
        if let petDetailView = UIStoryboard(name: "PetDetail", bundle: nil).instantiateInitialViewController() as? PetDetailViewController {
            return petDetailView
        }

        return nil
    }
}
