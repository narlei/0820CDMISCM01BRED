//
//  ViewController.swift
//  09_30_CollectionView2
//
//  Created by Narlei A Moreira on 30/09/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var collectionViewDogs: UICollectionView!

    let arrayDogs = ["LolaLolaLolaLolaLolaLolaLola", "Lala", "Lulu", "Lalu", "Lili"]

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewDogs.delegate = self
        collectionViewDogs.dataSource = self
    }
}

extension ViewController: UICollectionViewDelegate {
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayDogs.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DogCollectionCell", for: indexPath) as! DogCollectionCell

        cell.setup(name: arrayDogs[indexPath.row])

        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let viewSize = view.frame.size.width

        return CGSize(width: (viewSize / 3) - 10, height: 400)
    }
}
