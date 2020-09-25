//
//  HeroListViewController.swift
//  ReviewMyViews
//
//  Created by Narlei A Moreira on 23/09/20.
//

import UIKit

class HeroListViewController: UIViewController {

    @IBAction func actionButtonOpenDetail(_ sender: Any) {
        if let viewDetail = UIStoryboard(name: "HeroDetail", bundle: nil).instantiateInitialViewController() as? HeroDetailViewController {
            viewDetail.heroName = "Iron Man"
            
            navigationController?.pushViewController(viewDetail, animated: true)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Lista de Heróis"
    }
}
