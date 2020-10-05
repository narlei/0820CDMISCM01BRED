//
//  ViewController.swift
//  10_05_Review_Exe_03
//
//  Created by Narlei A Moreira on 05/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var collectionViewCars: UICollectionView!
    var arrayCars = [Car]()

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewCars.delegate = self
        collectionViewCars.dataSource = self
        
        arrayCars.append(Car(name: "Chevette", image: "emocionado.png"))
        arrayCars.append(Car(name: "Chevette", image: "emocionado.png"))
        arrayCars.append(Car(name: "Chevette", image: "emocionado.png"))
        arrayCars.append(Car(name: "Chevette", image: "emocionado.png"))
        arrayCars.append(Car(name: "Chevette", image: "emocionado.png"))
        arrayCars.append(Car(name: "Chevette", image: "emocionado.png"))
        arrayCars.append(Car(name: "Chevette", image: "emocionado.png"))
        arrayCars.append(Car(name: "Chevette", image: "emocionado.png"))
        arrayCars.append(Car(name: "Chevette", image: "emocionado.png"))
        arrayCars.append(Car(name: "Chevette", image: "emocionado.png"))
        arrayCars.append(Car(name: "Chevette", image: "emocionado.png"))
        arrayCars.append(Car(name: "Chevette", image: "emocionado.png"))
        arrayCars.append(Car(name: "Chevette", image: "emocionado.png"))
        arrayCars.append(Car(name: "Chevette", image: "emocionado.png"))
        arrayCars.append(Car(name: "Chevette", image: "emocionado.png"))
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let car = arrayCars[indexPath.row]
//        if let viewDetail = UIStoryboard(name: "CarDetail", bundle: nil).instantiateInitialViewController() as? CarDetailViewController {
//
//            viewDetail.car = car
//
//            navigationController?.pushViewController(viewDetail, animated: true)
//
//        }
        
        
        if let viewDetail = CarDetailViewController.getViewController() {
            viewDetail.car = arrayCars[indexPath.row]
            
            navigationController?.pushViewController(viewDetail, animated: true)
//            present(viewDetail, animated: true, completion: nil)
        }
        
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarCell", for: indexPath) as! CarCell
        
        let car = arrayCars[indexPath.row]
        cell.setup(car: car)
        
        return cell
    }
}
