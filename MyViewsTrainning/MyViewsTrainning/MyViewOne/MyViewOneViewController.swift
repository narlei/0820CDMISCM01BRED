//
//  MyViewOneViewController.swift
//  MyViewsTrainning
//
//  Created by Narlei A Moreira on 21/09/20.
//

import UIKit

class MyViewOneViewController: UIViewController {

    
    @IBAction func actionButtonModal(_ sender: Any) {
        
        if let viewModal = UIStoryboard(name: "MyViewOneModal", bundle: nil).instantiateInitialViewController() as? MyViewOneModalViewController {
            present(viewModal, animated: true, completion: nil)
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MyViewOne"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
