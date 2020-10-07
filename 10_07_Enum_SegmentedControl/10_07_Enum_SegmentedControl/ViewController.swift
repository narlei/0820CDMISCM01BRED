//
//  ViewController.swift
//  10_07_Enum_SegmentedControl
//
//  Created by Narlei A Moreira on 07/10/20.
//

import UIKit

enum SchoolRule {
    static let student = 0
    static let professor = 1
    static let director = 2
}

enum AnimalOptions {
    static let dog = 0
    static let cat = 1
    static let mouse = 2
}

enum CellNames {
    static let cellCarList = "CELULA CAR LIST"
}

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControlSchoolRules: UISegmentedControl!
    
    
    @IBOutlet weak var segmentedControlAnimal: UISegmentedControl!
    
    @IBAction func changedSegmentedControlAnimal(_ sender: Any) {
        print(segmentedControlAnimal.selectedSegmentIndex)
        
        if segmentedControlAnimal.selectedSegmentIndex == AnimalOptions.dog {
            
        }
    }
    
    @IBAction func changedSegmentedControlSchoolRules(_ sender: Any) {
        print(segmentedControlSchoolRules.selectedSegmentIndex)
    }
    
    
    @IBAction func actionShow(_ sender: Any) {
        switch segmentedControlSchoolRules.selectedSegmentIndex {
        case SchoolRule.student:
            print("Selecionada opção ESTUDANTE")
        case SchoolRule.professor:
            print("Selecionada opção PROFESSOR")
        case SchoolRule.director:
            print("Selecionada opção DIRETOR")
        default:
            print("Selecionada opção DESCONHECIDA")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

