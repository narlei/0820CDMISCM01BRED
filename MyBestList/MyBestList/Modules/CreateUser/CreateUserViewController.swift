//
//  CreateUserViewController.swift
//  MyBestList
//
//  Created by Narlei A Moreira on 14/01/21.
//

import UIKit

class CreateUserViewController: BaseViewController {

    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldConfirmPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionCreateAccount(_ sender: Any) {
        UserManager.createUser(email: textFieldEmail.text!, password: textFieldPassword.text!) { (success) in
            if success {
                let homeView: HomeViewController = HomeViewController.getModule()
                UIViewController.replaceRootViewController(viewController: homeView)
            } else {
                // Show Error
            }
        }
    }
    
    @IBAction func actionCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }


}
