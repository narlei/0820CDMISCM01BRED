//
//  ViewController.swift
//  10_16_Gesture
//
//  Created by Narlei A Moreira on 16/10/20.
//

import UIKit

enum GenderS: String {
    case action = "ACTION"
    case comedy = "COMEDY"
    case thriller = "THRILLER"
    case asda = ""
}

enum Gender {
    case action
    case comedy
    case thriller
    case asda
    
    var title: String {
        get {
            switch self {
            case .action:
                return "AÇÃO"
            case .comedy:
                return "COMÉDIA"
            case .thriller:
                return "TERROR"
            default:
                return ""
            }
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gender = Gender.action
        let gender2 = GenderS.action
        
        print(gender2.rawValue)
        print(gender.title)
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        tap.numberOfTouchesRequired = 2
        tap.numberOfTapsRequired = 2
        view?.addGestureRecognizer(tap)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe))
        swipeUp.direction = .up
        view?.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe))
        swipeDown.direction = .down
        view?.addGestureRecognizer(swipeDown)
        
        let long = UILongPressGestureRecognizer(target: self, action: #selector(handleLong))
        long.minimumPressDuration = 1
        view?.addGestureRecognizer(long)
    }
    
    @objc func handleTap() {
        print("TAP")
    }

    @objc func handleSwipe() {
        print("SWIPE")
    }

    @objc func handleLong() {
        print("LOOOOONG")
    }

}

