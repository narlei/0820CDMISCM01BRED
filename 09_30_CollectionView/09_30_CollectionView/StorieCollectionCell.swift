//
//  StorieCollectionCell.swift
//  09_30_CollectionView
//
//  Created by Narlei A Moreira on 30/09/20.
//

import UIKit

class StorieCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewStorie: UIImageView!
    
    func setup() {
        imageViewStorie.image = UIImage(named: "maxresdefault.jpg")
        imageViewStorie.layer.cornerRadius = imageViewStorie.frame.size.width / 2
        imageViewStorie.clipsToBounds = true
        imageViewStorie.layer.masksToBounds = true
        imageViewStorie.layer.borderColor = UIColor.blue.cgColor
        imageViewStorie.layer.borderWidth = 1
    }
    
}
