//
//  ViewController.swift
//  MMVM-sample
//
//  Created by Nadilson Santana on 12/08/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import UIKit

class MemesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var btnPost: UIButton!
    @IBOutlet weak var bottomText: UILabel!
    
    var viewModel = MemesViewModel()

    var memesDelegateDataSource: MemesTableViewDelegateDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        getMeme()

    }
    
    func setupUI() {
        self.btnPost.setTitle(viewModel.titleBtnPost, for: .normal)
        self.bottomText.text = viewModel.titleBottomText
    }
    
    func getMeme() {
        viewModel.getMeme(completion: { (success) in
            print(success)
            self.configureTableView()
        })
    }
    
    func configureTableView() {
        self.memesDelegateDataSource = MemesTableViewDelegateDataSource(memesViewModel: self.viewModel)
        self.tableView.delegate = memesDelegateDataSource
        self.tableView.dataSource = memesDelegateDataSource
        
        self.tableView.reloadData()
    }
    
}

