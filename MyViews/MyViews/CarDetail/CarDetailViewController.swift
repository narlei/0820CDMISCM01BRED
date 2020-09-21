//
//  CarDetailViewController.swift
//  MyViews
//
//  Created by Narlei A Moreira on 21/09/20.
//

import UIKit

class CarDetailViewController: UIViewController {
    @IBAction func actionButtonClose(_ sender: Any) {
        // Close MODAL
//        dismiss(animated: true, completion: nil)
        
        // Close Navigation
        navigationController?.popViewController(animated: true)
    }
    
    
    
    @IBAction func actiomButtonCheckout(_ sender: Any) {
        
        if let carCheckoutView = UIStoryboard(name: "CarCheckout", bundle: nil).instantiateInitialViewController() as? CarCheckoutViewController {
            navigationController?.pushViewController(carCheckoutView, animated: true)
        }
        
    }
    
    
    

    @IBAction func actionButtonOpenModel(_ sender: Any) {
        if let carModelViewController = UIStoryboard(name: "CarModel", bundle: nil).instantiateInitialViewController() as? CarModelViewController {
            
            carModelViewController.modelName = "XXXX"
            
            present(carModelViewController, animated: true, completion: nil)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Detalhes"
        
    }
}
