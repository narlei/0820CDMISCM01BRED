//
//  DogCollectionCell.swift
//  09_30_CollectionView2
//
//  Created by Narlei A Moreira on 30/09/20.
//

import UIKit

class DogCollectionCell: UICollectionViewCell {
    
    
    @IBOutlet weak var labelName: UILabel!
    
    
    func setup(name: String) {
        labelName.text = name
    }
    
    
}
