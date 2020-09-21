//
//  CarModelViewController.swift
//  MyViews
//
//  Created by Narlei A Moreira on 21/09/20.
//

import UIKit

class CarModelViewController: UIViewController {
    
    var modelName: String = ""

    @IBAction func actioButtonClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
