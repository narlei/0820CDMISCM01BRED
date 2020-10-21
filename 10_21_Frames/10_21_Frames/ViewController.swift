//
//  ViewController.swift
//  10_21_Frames
//
//  Created by Narlei A Moreira on 21/10/20.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let myView = UIView(frame: CGRect(x: 0, y: 100, width: view.frame.size.width, height: 200))

        let frame = UIScreen.main.bounds

        myView.backgroundColor = .cyan

        view.addSubview(myView)

        print(myView.frame)
        print(myView.bounds)

        let otherView = UIView(frame: myView.bounds)
        otherView.backgroundColor = .magenta

        view.addSubview(otherView)

        let roundedView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        roundedView.backgroundColor = .red
        view.addSubview(roundedView)
        roundedView.center = view.center
        
        
//        view.bringSubviewToFront()
        
        
        

        UIView.animate(withDuration: 3) {
            myView.frame = self.view.frame
        } completion: { _ in

            UIView.animate(withDuration: 2) {
                otherView.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: 60)
            } completion: { _ in

                UIView.animate(withDuration: 2) {
                    roundedView.layer.cornerRadius = 50
                    roundedView.layer.masksToBounds = true
                }
            }
        }
    }
}
