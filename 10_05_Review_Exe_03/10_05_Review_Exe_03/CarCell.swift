//
//  CarCell.swift
//  10_05_Review_Exe_03
//
//  Created by Narlei A Moreira on 05/10/20.
//

import UIKit

class CarCell: UICollectionViewCell {
    @IBOutlet var labelName: UILabel?
    @IBOutlet var imageViewPhoto: UIImageView?

    func setup(car: Car) {
        labelName?.text = car.name
        imageViewPhoto?.image = UIImage(named: car.image)
    }
}
