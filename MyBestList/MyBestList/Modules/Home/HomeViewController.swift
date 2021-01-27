//
//  HomeViewController.swift
//  MyBestList
//
//  Created by Narlei A Moreira on 14/01/21.
//

import FirebaseDatabase
import UIKit

class HomeViewController: BaseViewController {
    @IBAction func actionSair(_ sender: Any) {
        UserManager.signOut()
        let loginView: LoginViewController = LoginViewController.getModule()
        UIViewController.replaceRootViewController(viewController: loginView)
    
    }

    var ref: DatabaseReference!
    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
        ref.child("users").child("narlei_123").child("favoritos").child("book_one").setValue(
            ["name": "Sherlock Holmes"]
        )
        
        ref.child("users").child("narlei_123").child("favoritos").child("book_two").setValue(
            ["name": "Joaozinho"]
        )
        
        ref.child("users").child("narlei_123").child("favoritos").child("book_zero").setValue(
            ["name": "Pedrinho"]
        )

        ref.child("users").child("narlei_123").child("favoritos").observeSingleEvent(of: .value, with: { snapshot in
            // Get user value
            if let value = snapshot.value as? NSDictionary{
                for key in value.allKeys {
                    if let dicBook = value[key] as? NSDictionary {
                        print(dicBook)
                        
                        
                    }
                }
            }

        }) { error in
            print(error.localizedDescription)
        }
    }
    
    
    func save(object: BaseClassProtocol) {
        ref = Database.database().reference()
        ref.child("users").child("narlei_123").child(object.getTableName()).child(object.getId()).setValue(
            object.toDictionary()
        )
    }
}

class Pessoa: BaseClassProtocol {
    func getId() -> String {
        return id!
    }
    
    func getTableName() -> String {
        return "favoritos"
    }
    
    func toDictionary() -> [String:Any] {
        return ["id": id!]
    }
    
    var name: String?
    var id: String?
}

class Book: BaseClassProtocol {
    func getId() -> String {
        return id!
    }
    
    func getTableName() -> String {
        return "favoritos"
    }
    
    func toDictionary() -> [String:Any] {
        return ["id": id!]
    }
    
    var name: String?
    var id: String?
    
}


protocol BaseClassProtocol {
    func getId() -> String
    func getTableName() -> String
    func toDictionary() -> [String:Any]
}
