//
//  PersonCell.swift
//  10_14_Desafio_Segmented_Table
//
//  Created by Narlei A Moreira on 14/10/20.
//

import UIKit

class PersonCell: UITableViewCell {
    
    @IBOutlet var labelTitle: UILabel?
    
    func setup(person: Person) {
        labelTitle?.text = person.name
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
