//
//  ViewController.swift
//  Prime Number
//
//  Created by dit03 on 2019. 4. 10..
//  Copyright © 2019년 201835867. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var txtResult: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtInput.delegate = self
        txtInput.clearButtonMode = UITextField.ViewMode.always
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func Check(_ sender: UIButton) {
        var isPrime = true
        if let number = Int(txtInput.text!) {
            if number <= 0 {
                txtResult.text = "자연수를 입력하시오"
                return
            }
            if number == 1 {
                isPrime = false
            }
            if (number != 1 && number != 2) {
                for i in 2..<number {
                    if (number % i == 0) {
                        isPrime = false
                    }
                }
            }
            if isPrime {
                txtResult.text = "소수입니다"
                print("소수")
            } else {
                txtResult.text = "소수가 아닙니다."
                print("소수아님")
            }
        } else {
            txtResult.text = "숫자를 입력하시오"
        }
        txtInput.text = ""
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtInput.resignFirstResponder()
        return true
    }
    
    
}

