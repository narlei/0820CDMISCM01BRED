//
//  CarDetailViewController.swift
//  10_05_Review_Exe_03
//
//  Created by Narlei A Moreira on 05/10/20.
//

import UIKit

class CarDetailViewController: UIViewController {
    
    var car: Car?
    @IBOutlet var imageViewPhoto: UIImageView?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let car = car {
            imageViewPhoto?.image = UIImage(named: car.image)
            title = car.name
        }
    }

    static func getViewController() -> CarDetailViewController? {
        if let viewDetail = UIStoryboard(name: "CarDetail", bundle: nil).instantiateInitialViewController() as? CarDetailViewController {
            return viewDetail
        }
        
        return nil
    }
    
}
