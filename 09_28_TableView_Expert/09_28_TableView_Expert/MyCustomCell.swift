//
//  MyCustomCell.swift
//  09_28_TableView_Expert
//
//  Created by Narlei A Moreira on 28/09/20.
//

import UIKit

class MyCustomCell: UITableViewCell {
    
    @IBOutlet weak var labelTitle: UILabel!
    
    func setup(title: String) {
        labelTitle.text = title
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
