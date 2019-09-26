//
//  ViewController.swift
//  Homework Assignment 4 -Calculator
//
//  Created by Mengyuan Chen on 9/12/19.
//  Copyright © 2019 Mengyuan Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNum = 0
    var secondNum = 0
    var result = 0
    var operation = ""
    
    // textField
    @IBOutlet weak var resultText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func oneButton(_ sender: UIButton) {
        resultText.text = "1"  // when button "1" is tapped, the text field displays 1
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        resultText.text = "2" // when button "2" is tapped, the text field displays 2
    }
    
    @IBAction func threeButton(_ sender: UIButton) {
        resultText.text = "3" // when button "3" is tapped, the text field displays 3
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        if let text = resultText.text{
            if Int(text) != nil {
                firstNum = Int(text)!    //get the first number when tap the operation sign
            }else {
                firstNum = 0           // if the text field value is nil, set the first num default value to 0
            }
        }
        operation = "+"              // get the operation sign
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
        if let text = resultText.text{
            if Int(text) != nil{
                firstNum = Int(text)!  //get the first number when tap the operation sign
            }
        }else {
            firstNum = 0           // if the text field value is nil, set the first num default value to 0
        }
        operation = "-"           // get the operation sign
    }
    
    @IBAction func equalsButton(_ sender: UIButton) {
        if let text = resultText.text{
            if Int(text) != nil{
                secondNum = Int(text)!  //get the second number when tap the eaquals sign
            }
        }
        // the result depends on the operation sign
        if operation == "+"{
            result = firstNum + secondNum
        }
        if operation == "-"{
            result = firstNum - secondNum
        }
        if operation == ""{
            result = secondNum
        }
        resultText.text = String(result) // display the result into the text field
        // after calculating, reset the values
        firstNum = result
        secondNum = 0
        operation = ""
    }
    
    // clear button resets all the values
    @IBAction func clearButton(_ sender: UIButton) {
        firstNum = 0
        secondNum = 0
        operation = ""
        result = 0
        resultText.text = "0"
    }
    
    
}

