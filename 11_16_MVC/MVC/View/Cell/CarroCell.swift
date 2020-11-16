//
//  CarroCell.swift
//  MVC
//
//  Created by Felipe Silva on 4/20/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import UIKit

class CarroCell: UITableViewCell {

    @IBOutlet private weak var modeloLabel: UILabel!
    @IBOutlet private weak var anoLabel: UILabel!
    @IBOutlet private weak var imageModelo: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(model: Carro?) {
        
        if let _model = model {
            self.modeloLabel.text = _model.modelo
            self.anoLabel.text = String(_model.ano ?? 0)
            self.imageModelo.image = UIImage(named: _model.imagem ?? "")
            
        }
    }
    
}
