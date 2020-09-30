//
//  ViewController.swift
//  09_30_CollectionView
//
//  Created by Narlei A Moreira on 30/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrayDogs = [Dog]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        arrayDogs.append(Dog(name: "Dogita", breed: "Bucica", age: 4))
        arrayDogs.append(Dog(name: "Dogito", breed: "Papa ovo", age: 2))
        arrayDogs.append(Dog(name: "Catioro", breed: "Hot Vailer", age: 2))
        arrayDogs.append(Dog(name: "Caramelo", breed: "Vira lata", age: 2))
        arrayDogs.append(Dog(name: "Estopinha", breed: "Pinscher", age: 2))
        arrayDogs.append(Dog(name: "Endiabrado", breed: "Ranço", age: 2))
        arrayDogs.append(Dog(name: "Bob", breed: "Hot Wagner", age: 2))
        arrayDogs.append(Dog(name: "Pipoca", breed: "Poodle", age: 2))
        arrayDogs.append(Dog(name: "Dogita", breed: "Bucica", age: 4))
        arrayDogs.append(Dog(name: "Dogito", breed: "Papa ovo", age: 2))
        arrayDogs.append(Dog(name: "Catioro", breed: "Hot Vailer", age: 2))
        arrayDogs.append(Dog(name: "Caramelo", breed: "Vira lata", age: 2))
        arrayDogs.append(Dog(name: "Estopinha", breed: "Pinscher", age: 2))
        arrayDogs.append(Dog(name: "Endiabrado", breed: "Ranço", age: 2))
        arrayDogs.append(Dog(name: "Bob", breed: "Hot Wagner", age: 2))
        arrayDogs.append(Dog(name: "Pipoca", breed: "Poodle", age: 2))
        arrayDogs.append(Dog(name: "Dogita", breed: "Bucica", age: 4))
        arrayDogs.append(Dog(name: "Dogito", breed: "Papa ovo", age: 2))
        arrayDogs.append(Dog(name: "Catioro", breed: "Hot Vailer", age: 2))
        arrayDogs.append(Dog(name: "Caramelo", breed: "Vira lata", age: 2))
        arrayDogs.append(Dog(name: "Estopinha", breed: "Pinscher", age: 2))
        arrayDogs.append(Dog(name: "Endiabrado", breed: "Ranço", age: 2))
        arrayDogs.append(Dog(name: "Bob", breed: "Hot Wagner", age: 2))
        arrayDogs.append(Dog(name: "Pipoca", breed: "Poodle", age: 2))
        arrayDogs.append(Dog(name: "Dogita", breed: "Bucica", age: 4))
        arrayDogs.append(Dog(name: "Dogito", breed: "Papa ovo", age: 2))
        arrayDogs.append(Dog(name: "Catioro", breed: "Hot Vailer", age: 2))
        arrayDogs.append(Dog(name: "Caramelo", breed: "Vira lata", age: 2))
        arrayDogs.append(Dog(name: "Estopinha", breed: "Pinscher", age: 2))
        arrayDogs.append(Dog(name: "Endiabrado", breed: "Ranço", age: 2))
        arrayDogs.append(Dog(name: "Bob", breed: "Hot Wagner", age: 2))
        arrayDogs.append(Dog(name: "Pipoca", breed: "Poodle", age: 2))
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Clicou")
    }
    
}
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayDogs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "DogCollectionCell", for: indexPath) as! DogCollectionCell
//
//        cell.setup(dog: arrayDogs[indexPath.row])
        
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "StorieCollectionCell", for: indexPath) as! StorieCollectionCell
        
        cell.setup()
        
        return cell
    }
}
