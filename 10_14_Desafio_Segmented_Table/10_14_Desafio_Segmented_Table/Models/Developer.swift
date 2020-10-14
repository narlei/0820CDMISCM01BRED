//
//  Developer.swift
//  10_14_Desafio_Segmented_Table
//
//  Created by Narlei A Moreira on 14/10/20.
//

import Foundation

class Developer: Person {
    var arrayLanguages: [String]
    
    init(name: String, imagePath: String, age: Int, arrayLanguages: [String]) {
        self.arrayLanguages = arrayLanguages
        super.init(name: name, imagePath: imagePath, age: age)
    }
}
