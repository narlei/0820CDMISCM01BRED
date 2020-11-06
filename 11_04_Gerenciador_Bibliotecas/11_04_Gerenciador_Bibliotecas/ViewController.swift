//
//  ViewController.swift
//  11_04_Gerenciador_Bibliotecas
//
//  Created by Narlei A Moreira on 04/11/20.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    
    var arrayAll = [String]()
    
    
    var arrayOpen = [String]()
    var arrayClose = [String]()
    
    
    
    @IBOutlet weak var imageViewTest: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/logo.png")
        imageViewTest.kf.setImage(with: url)
        
        arrayAll = ["Coca cola", "Maçã"]
        
        imageViewTest.isHidden = false
        
    }
    
//    func loadData() {
//        arrayOpen = [String]()
//        arrayClose = [String]()
//
//
//        var arrayFiltered = [String]()
//
//        if !searchBar.text.isEmpty() {
//            arrayFiltered = arrayAll.filter({ (item) -> Bool in
//                return item.contains("xcw")
//            })
//        }else {
//            arrayFiltered.append(contentsOf: arrayAll)
//        }
//
//        for item in arrayFiltered {
//            if item.isCompleted {
//                arrayClose.append(item)
//            } else {
//                arrayOpen.append(item)
//            }
//        }
//
//        tableView.reloadData()
//    }
    
    
    
    
    
}
