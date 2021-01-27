//
//  ViewController.swift
//  MyBestList
//
//  Created by Narlei A Moreira on 14/01/21.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    var ref: DatabaseReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        ref.child("users").child("123").setValue(["username": "Narlei"])
        
        
        
    }


}

