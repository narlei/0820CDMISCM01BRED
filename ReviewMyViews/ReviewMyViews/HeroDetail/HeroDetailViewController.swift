//
//  HeroDetailViewController.swift
//  ReviewMyViews
//
//  Created by Narlei A Moreira on 23/09/20.
//

import UIKit

class HeroDetailViewController: UIViewController {
    
    var heroName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Detalhes do \(heroName)"
    }
}
