//
//  BaseViewController.swift
//  10_16_CitiesList
//
//  Created by Narlei A Moreira on 16/10/20.
//

import UIKit

class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    static func getModule<T>() -> T? {
        var moduleName = String(describing: self)
        moduleName = moduleName.replacingOccurrences(of: "ViewController", with: "")
        if let viewDetail = UIStoryboard(name: moduleName, bundle: nil).instantiateInitialViewController() as? T {
            return viewDetail
        }

        return nil
    }
}
