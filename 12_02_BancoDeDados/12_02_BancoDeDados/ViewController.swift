//
//  ViewController.swift
//  12_02_BancoDeDados
//
//  Created by Narlei A Moreira on 02/12/20.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let person = Person()
        person.name = "Narlei"
        person.identifier = "12938182390"
        person.saveData()
        
        for i in 0...1000 {
            let person = Person()
            person.name = "Pessoa \(i)"
            person.identifier = person.getUniqueKey()
            person.saveData()
            
            let order = Order()
            order.date = "10-10-2020"
            order.value = "1233"
            order.personID = person.identifier
            order.saveData()
        }
        
        print("Terminou")
        
        
        if let personResult = Person.getObjectWithId("12938182390") as? Person {
            print(personResult.name)
        }
    }
}
