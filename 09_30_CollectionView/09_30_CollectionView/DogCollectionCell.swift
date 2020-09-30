//
//  DogCollectionCell.swift
//  09_30_CollectionView
//
//  Created by Narlei A Moreira on 30/09/20.
//

import UIKit

class DogCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelBreed: UILabel!
    
    func setup(dog: Dog) {
        labelName.text = dog.name
        labelBreed.text = dog.breed
    }
    
}
