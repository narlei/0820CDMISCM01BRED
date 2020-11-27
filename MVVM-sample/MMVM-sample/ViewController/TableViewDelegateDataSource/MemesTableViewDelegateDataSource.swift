//
//  MemesTableViewDelegateDataSource.swift
//  MMVM-sample
//
//  Created by Nadilson Santana on 13/08/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import Foundation
import UIKit

class MemesTableViewDelegateDataSource: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    var memesViewModel =  MemesViewModel()
    
    init(memesViewModel: MemesViewModel){
        self.memesViewModel = memesViewModel
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return memesViewModel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? MemesTableViewCell {
            let meme = memesViewModel.getCurrentMeme(currentObject: indexPath.row)
            cell.setup(meme: meme)
            return cell
        }
        return UITableViewCell()
    }

    
}
