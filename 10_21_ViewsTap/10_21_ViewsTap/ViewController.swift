//
//  ViewController.swift
//  10_21_ViewsTap
//
//  Created by Narlei A Moreira on 21/10/20.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        addFirstView()
    }

    func addFirstView() {
        createView(y: 60, topView: nil)
    }

    func canCreateSubViewAbove(topView: UIView) -> Bool {
        if (topView.frame.size.height + topView.frame.origin.y + 50) >= view.frame.size.height {
            return false
        }
        return true
    }


    @discardableResult
    func createView(y: CGFloat, topView: UIView?) -> UIView{
        var currentY = y
        if let topView = topView {
            currentY = topView.frame.size.height + topView.frame.origin.y
        }
        
        let newView = UIView(frame: CGRect(x: 0, y: currentY, width: 50, height: 50))
        newView.backgroundColor = .random()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapView(_:)))
        newView.addGestureRecognizer(tap)
        newView.isUserInteractionEnabled = true

        view.addSubview(newView)
        
        return newView
    }

    func createMasterViewAndClean() {
        let newView = createView(y: 0, topView: nil)
        newView.center = view.center

        UIView.animate(withDuration: 2) {
            newView.frame = self.view.frame
            newView.backgroundColor = .white
        } completion: { _ in
            self.clearViews()
            self.addFirstView()
        }
    }

    func clearViews() {
        view.subviews.forEach { (view) in
            view.removeFromSuperview()
        }
        
        for currentView in view.subviews {
            currentView.removeFromSuperview()
        }
    }

    @objc func tapView(_ gesture: UITapGestureRecognizer) {
        if let view = gesture.view {
            if canCreateSubViewAbove(topView: view) {
                createView(y: 0, topView: view)
            } else {
                createMasterViewAndClean()
            }
        }
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
            red: .random(),
            green: .random(),
            blue: .random(),
            alpha: 1.0
        )
    }
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
