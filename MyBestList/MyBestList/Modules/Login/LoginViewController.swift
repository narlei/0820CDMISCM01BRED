//
//  LoginViewController.swift
//  MyBestList
//
//  Created by Narlei A Moreira on 14/01/21.
//

import UIKit

class LoginViewController: BaseViewController {
    @IBOutlet var textFieldEmail: UITextField!
    @IBOutlet var textFieldPassword: UITextField!

    @IBAction func actionButtonLogin(_ sender: Any) {
        UserManager.login(email: textFieldEmail.text!, password: textFieldPassword.text!) { (success) in
            if success {
                let homeView: HomeViewController = HomeViewController.getModule()
                UIViewController.replaceRootViewController(viewController: homeView)
            } else {
                // Show Error
            }
        }
    }

    @IBAction func actionButtonCreateAccount(_ sender: Any) {
        let createUserView: CreateUserViewController = CreateUserViewController.getModule()
        present(createUserView, animated: true, completion: nil)
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
