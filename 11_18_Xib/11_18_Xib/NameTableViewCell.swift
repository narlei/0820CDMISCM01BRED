//
//  NameTableViewCell.swift
//  11_18_Xib
//
//  Created by Narlei A Moreira on 18/11/20.
//

import UIKit

class NameTableViewCell: UITableViewCell {

    @IBOutlet weak var labelTitle: UILabel!
    
    func setup(name: String) {
        labelTitle.text = name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
