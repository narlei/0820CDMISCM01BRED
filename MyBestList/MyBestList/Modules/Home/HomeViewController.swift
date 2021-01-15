//
//  HomeViewController.swift
//  MyBestList
//
//  Created by Narlei A Moreira on 14/01/21.
//

import UIKit

class HomeViewController: BaseViewController {

    @IBAction func actionSair(_ sender: Any) {
        UserManager.signOut()
        let loginView: LoginViewController = LoginViewController.getModule()
        UIViewController.replaceRootViewController(viewController: loginView)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

