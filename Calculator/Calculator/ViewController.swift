//
//  ViewController.swift
//  Calculator
//
//  Created by ömer  faruk sezer on 13.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firsText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sumClicked(_ sender: Any) {
        if let firstNumber = Double(firsText.text!) {
                   if let secondNumber = Double(secondText.text!) {
                       result = firstNumber + secondNumber
                       resultLabel.text = String(result)
                   }
               }
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        
             if let firstNumber = Double(firsText.text!) {
                 if let secondNumber = Double(secondText.text!) {
                     result = firstNumber - secondNumber
                     resultLabel.text = String(result)
                 }
             }
    }
    
    @IBAction func diviedClicked(_ sender: Any) {
        if let firstNumber = Double(firsText.text!) {
                    if let secondNumber = Double(secondText.text!) {
                        result = firstNumber * secondNumber
                        resultLabel.text = String(result)
                    }
                }
    }
    
    @IBAction func multitypeClicked(_ sender: Any) {
        
        if let firstNumber = Double(firsText.text!) {
            if let secondNumber = Double(secondText.text!) {
                result = firstNumber / secondNumber
                resultLabel.text = String(result)
            }
        }
        
    }
}

