//
//  CityCell.swift
//  10_16_CitiesList
//
//  Created by Narlei A Moreira on 16/10/20.
//

import UIKit

class CityCell: UITableViewCell {

    @IBOutlet weak var labelTitle: UILabel!
    
    func setup(city: City) {
        labelTitle.text = "\(city.nome) - \(city.estado) / \(city.pais)"
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
