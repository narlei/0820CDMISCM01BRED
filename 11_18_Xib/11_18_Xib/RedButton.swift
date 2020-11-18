//
//  RedButton.swift
//  11_18_Xib
//
//  Created by Narlei A Moreira on 18/11/20.
//

import UIKit

class RedButton: UIButton {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        super.draw(rect)
        setup()
    }
    
    
    
    func setup() {
        backgroundColor = .red
    }

}
