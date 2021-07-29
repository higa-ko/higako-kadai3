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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func answerButton(_ sender: UIButton) {
        
        var num1 = Int(textField1.text!) ?? 0
        var num2 = Int(textField2.text!) ?? 0
        
        //スイッチがオンの場合正負を逆転
        if switch1.isOn {
            num1 = num1 * -1
        }
        if switch2.isOn {
            num2 = num2 * -1
        }
        
        label1.text = String(num1)
        label2.text = String(num2)
        answerLabel.text = String(num1 + num2)
    }
}
