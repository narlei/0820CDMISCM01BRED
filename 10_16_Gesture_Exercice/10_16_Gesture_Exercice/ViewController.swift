//
//  ViewController.swift
//  10_16_Gesture_Exercice
//
//  Created by Narlei A Moreira on 16/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var viewDrag: UIView!
    
    
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var viewTap: UIView!
    @IBOutlet weak var viewSwipe: UIView!
    @IBOutlet weak var viewLong: UIView!
    

    var panGesture = UIPanGestureRecognizer()
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(add))
        viewTap.addGestureRecognizer(tap)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(remove))
        swipeRight.direction = .right
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(remove))
        swipeLeft.direction = .left
        
        viewSwipe.addGestureRecognizer(swipeRight)
        viewSwipe.addGestureRecognizer(swipeLeft)
        
        let long = UILongPressGestureRecognizer(target: self, action: #selector(add))
        long.minimumPressDuration = 1
        viewLong.addGestureRecognizer(long)

        panGesture = UIPanGestureRecognizer(target: self, action: #selector(draggedView(_:)))
        viewDrag.addGestureRecognizer(panGesture)
    }
    
    @objc func add() {
        count += 1
        updateResult()
    }
    
    @objc func remove() {
        count -= 1
        updateResult()
    }
    
    func updateResult() {
        labelResult.text = "\(count)"
        print(count)
    }
    
    
    @objc func draggedView(_ sender:UIPanGestureRecognizer){
        self.view.bringSubviewToFront(viewDrag)
        let translation = sender.translation(in: self.view)
        viewDrag.center = CGPoint(x: viewDrag.center.x + translation.x, y: viewDrag.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
}
