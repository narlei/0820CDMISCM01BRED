//
//  UserRegisterViewController.swift
//  10_19_Closure_exec4
//
//  Created by Narlei A Moreira on 19/10/20.
//

import UIKit

class User {
    
}

typealias MyOnSave = (_ email: String, _ password: String) -> Void

typealias MyOnSaveUser = (_ user: User) -> Void


class UserRegisterViewController: UIViewController {

    private var onSave: ((_ email: String, _ password: String) -> Void)?
    
    private var myOnSave: MyOnSave?
    
    @IBOutlet weak var textFieldEmail: UITextField!
    
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBAction func actionRegister(_ sender: Any) {
        
        onSave?(textFieldEmail.text!, textFieldPassword.text!)
        myOnSave?(textFieldEmail.text!, textFieldPassword.text!)
        
        dismiss(animated: true, completion: nil)
    }
    
    func setOnSave(onSave: @escaping (_ email: String, _ password: String) -> Void) {
        self.onSave = onSave
    }
    
    func setMyOnSave(onSave: @escaping MyOnSave) {
        self.myOnSave = onSave
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
