//
//  MemesViewModel.swift
//  MMVM-sample
//
//  Created by Nadilson Santana on 12/08/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import Foundation

class MemesViewModel {

    let apiManager = APIManager()
    
    let memesAPI = MemesAPI()
    let arrayLanguague = ["Portugues", "Ingles"]
    var arrayMeme: [Meme]?
    
    var titlePage: String {
        return "Meme Page"
    }
    
    var titleBtnPost: String {
        return "Post"
    }
    
    var titleBottomText: String {
        return "Tela Pagina Meme"
    }
    
    func getCurrentMeme(currentObject: Int) -> Meme {
        if let array = arrayMeme {
            return array[currentObject]
        }
        return Meme(id: "", name: "", url: "", width: 0, height: 0, boxCount: 0)
        
        UserDefaults.standard.set("pt-BR", forKey: "language")
        print(UserDefaults.standard.value(forKey: "language"))
    }
    
    func getMeme(completion: @escaping (Bool) -> Void) {
        memesAPI.getMeme { (listMeme, success) in
            if success {
                self.arrayMeme = listMeme
                completion(true)
            }
        }
    }
    
    func get() {
        memesAPI.getMemeWithMVVM {
            
        }
    }
    
    func numberOfRows() -> Int {
        return arrayMeme?.count ?? 0 
    }
}
