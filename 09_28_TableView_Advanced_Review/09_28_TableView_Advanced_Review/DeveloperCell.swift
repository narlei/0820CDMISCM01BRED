//
//  DeveloperCell.swift
//  09_28_TableView_Advanced_Review
//
//  Created by Narlei A Moreira on 28/09/20.
//

import UIKit

class DeveloperCell: UITableViewCell {
    @IBOutlet var imageViewPhoto: UIImageView!
    @IBOutlet var labelName: UILabel!

    func setup(developer: Developer) {
        labelName.text = developer.name
        imageViewPhoto.image = UIImage(named: developer.profileImage)
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
