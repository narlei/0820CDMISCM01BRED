//
//  DetailViewController.swift
//  10_19_Closure
//
//  Created by Narlei A Moreira on 19/10/20.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    var onComplete: ((_ option: String) -> Void)?
    
    var name: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func changedSegmetedOption(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            onComplete?("Alugar")
        case 1:
            onComplete?("Comprar")
        default:
            onComplete?("Vender")
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    func setCompletion(onComplete: @escaping (_ option: String) -> Void) {
        self.onComplete = onComplete
    }

    static func getController() -> DetailViewController? {
        if let viewDetail = UIStoryboard(name: "Detail", bundle: nil).instantiateInitialViewController() as? DetailViewController {
            return viewDetail
        }

        return nil
    }

    // Ao clicar num botão X, faça algo na tela anterior
}
