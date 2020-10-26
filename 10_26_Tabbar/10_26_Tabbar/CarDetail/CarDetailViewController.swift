//
//  CarDetailViewController.swift
//  10_26_Tabbar
//
//  Created by Narlei A Moreira on 26/10/20.
//

import UIKit

class CarDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let customTabBatItem = UITabBarItem(title: "TESTE", image: nil, tag: 0)
        self.tabBarItem = customTabBatItem
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
