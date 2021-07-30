//
//  ViewController.swift
//  Part3
//
//  Created by 葡萄酒 on 2021/07/29.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var switch1: UISwitch!
    @IBOutlet private weak var switch2: UISwitch!
    @IBOutlet private weak var label1: UILabel!
    @IBOutlet private weak var label2: UILabel!
    @IBOutlet private weak var answerLabel: UILabel!

    @IBAction func answerButton(_ sender: UIButton) {
        
        let num1 = Int(textField1.text!) ?? 0
        let num2 = Int(textField2.text!) ?? 0

        let signedNum1: Int
        if switch1.isOn {
            signedNum1 = -num1
        } else {
            signedNum1 = num1
        }

        let signedNum2: Int
        if switch2.isOn {
            signedNum2 = -num2
        } else {
            signedNum2 = num2
        }
        
        label1.text = String(signedNum1)
        label2.text = String(signedNum2)
        answerLabel.text = String(signedNum1 + signedNum2)
    }
}
