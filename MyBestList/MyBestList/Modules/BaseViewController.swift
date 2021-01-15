//
//  BaseViewController.swift
//  10_16_CitiesList
//
//  Created by Narlei A Moreira on 16/10/20.
//

import UIKit

class BaseViewController: UIViewController {
    
    fileprivate var viewLoading: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    static func getModule<T>() -> T {
        var moduleName = String(describing: self)
        moduleName = moduleName.replacingOccurrences(of: "ViewController", with: "")
        let viewDetail = UIStoryboard(name: moduleName, bundle: nil).instantiateInitialViewController() as! T
        return viewDetail
    }
}

extension BaseViewController {
    func showLoading() {
        print("Loading...")
        viewLoading = UIView(frame: UIScreen.main.bounds)
        viewLoading?.backgroundColor = .green
        viewLoading?.alpha = 0.4
        let label = UILabel(frame: viewLoading!.frame)
        label.text = "Loading..."
        label.backgroundColor = .clear
        label.textAlignment = .center
        
        self.view.addSubview(viewLoading!)
        
        viewLoading?.addSubview(label)
        label.center = viewLoading!.center
    }

    func hideLoading() {
        viewLoading?.removeFromSuperview()
    }

    func showMessage(message: String) {
        let alert = UIAlertController(title: message, message: nil, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel) { _ in
        }
        alert.addAction(okAction)
        present(alert, animated: true) {
        }
    }
}
