//
//  ViewController.swift
//  10_21_Views_tap
//
//  Created by Narlei A Moreira on 21/10/20.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        createView(viewTop: nil)
    }

    @discardableResult
    func createView(viewTop: UIView?) -> UIView {
        var y = CGFloat(50)

        if let viewTop = viewTop {
            y = viewTop.frame.origin.y + viewTop.frame.size.height
        }

        let newView = UIView(frame: CGRect(x: 0, y: y, width: 50, height: 50))
        newView.backgroundColor = .random()

        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))

        newView.addGestureRecognizer(tap)
        newView.isUserInteractionEnabled = true

        view.addSubview(newView)

        return newView
    }

    func canAddView(viewTop: UIView) -> Bool {
        return (viewTop.frame.origin.y + viewTop.frame.size.height + 50) <= view.frame.height
    }

    func addMasterView() {
        let newView = createView(viewTop: nil)
        newView.center = view.center

        UIView.animate(withDuration: 2) {
            newView.frame = self.view.frame
            newView.backgroundColor = .white
        } completion: { _ in
            self.clearViews()
            self.createView(viewTop: nil)
        }
    }

    func clearViews() {
        for currentView in view.subviews {
            currentView.removeFromSuperview()
        }
    }

    @objc func handleTap(_ gesture: UITapGestureRecognizer) {
        if let currentView = gesture.view {
            if canAddView(viewTop: currentView) {
                createView(viewTop: currentView)
            } else {
                addMasterView()
            }
        }
    }
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
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
