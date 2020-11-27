//
//  MemesTableViewCell.swift
//  MMVM-sample
//
//  Created by Nadilson Santana on 12/08/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import UIKit

class MemesTableViewCell: UITableViewCell {

    @IBOutlet weak var memeTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(meme: Meme) {
        self.memeTitle.text = meme.name
    }

}
