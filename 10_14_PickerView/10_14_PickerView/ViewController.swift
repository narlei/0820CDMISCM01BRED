//
//  ViewController.swift
//  10_14_PickerView
//
//  Created by Narlei A Moreira on 14/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var pickerViewNames: UIPickerView!

    let arrayLetters = ["A", "B", "C", "D", "E"]
    let arrayNumbers = ["1", "2", "3", "4", "5"]
    let arrayNumbersRoman = ["I", "II", "III", "IV", "V"]

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerViewNames.delegate = self
        pickerViewNames.dataSource = self
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            print(arrayLetters[row])
        }
        if component == 1 {
            print(arrayNumbers[row])
        }
        if component == 2 {
            print(arrayNumbersRoman[row])
        }
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return arrayLetters.count
        }
        if component == 1 {
            return arrayNumbers.count
        }

        return arrayNumbersRoman.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return arrayLetters[row]
        }
        if component == 1 {
            return arrayNumbers[row]
        }

        return arrayNumbersRoman[row]
    }
}
