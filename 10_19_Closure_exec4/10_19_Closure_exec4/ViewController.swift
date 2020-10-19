//
//  ViewController.swift
//  10_19_Closure_exec4
//
//  Created by Narlei A Moreira on 19/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    
    
    @IBAction func actionRegister(_ sender: Any) {
        
        if let viewRegister = UIStoryboard(name: "UserRegister", bundle: nil).instantiateInitialViewController() as? UserRegisterViewController {
            
            
            viewRegister.setOnSave { (email, password) in
                self.textFieldEmail.text = email
                self.textFieldPassword.text = password
            }
            
            viewRegister.setMyOnSave { (email, password) in
                self.textFieldEmail.text = email
                self.textFieldPassword.text = password
            }
            
            present(viewRegister, animated: true, completion: nil)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

