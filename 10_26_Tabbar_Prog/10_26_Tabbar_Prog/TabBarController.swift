//
//  TabBarController.swift
//  10_26_Tabbar_Prog
//
//  Created by Narlei A Moreira on 26/10/20.
//

import UIKit

class TabBarController: UITabBarController {
    
    static let shared = TabBarController()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadViewControllers()
    }

    func loadViewControllers() {
        var arrayViews = [UIViewController]()

        
        /// DAQUI
        if let viewController1 = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? ViewController {
            viewController1.view.backgroundColor = .red
            viewController1.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 0)
            
            arrayViews.append(viewController1)
        }

        let viewController2 = UIViewController()
        viewController2.view.backgroundColor = .green
        viewController2.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        arrayViews.append(viewController2)

        let viewController3 = UIViewController()
        viewController3.view.backgroundColor = .blue
        viewController3.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        arrayViews.append(viewController3)
        /// AQUI
        
        
        viewControllers = arrayViews
    }
}



extension UIViewController {
    class func replaceRootViewController(viewController: UIViewController) {
        guard let window = UIApplication.shared.windows.filter({ $0.isKeyWindow }).first
        else {
            return
        }
        let rootViewController = window.rootViewController!

        viewController.view.frame = rootViewController.view.frame
        viewController.view.layoutIfNeeded()

        UIView.transition(with: window, duration: 0.3, options: .transitionFlipFromLeft, animations: {
            window.rootViewController = viewController
        }, completion: nil)
    }
}
