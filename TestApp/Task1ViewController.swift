//
//  Task1ViewController.swift
//  TestApp
//
//  Created by Yaroslav Verstiuk on 12/30/16.
//  Copyright © 2016 Yaroslav Verstiuk. All rights reserved.
//

import UIKit

class Task1ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var valueA: UITextField!
    @IBOutlet weak var valueB: UITextField!
    @IBOutlet weak var valueC: UITextField!
    @IBOutlet weak var resultValue: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        resultValue.text = ""
    }
    
    @IBAction func getResult(_ sender: UIButton) {
        let A = valueA.text!
        let B = valueB.text!
        let C = valueC.text!
        
        if A.isEmpty || B.isEmpty || C.isEmpty {
            resultValue.text = "Provide all vallues"
        } else {
            let calculationResult = TaskHelper.resolveQuadraticFormula(a: Int(A)!, b: Int(B)!, c: Int(C)!)
            
            if calculationResult.noResult {
                resultValue.text = "No Result"
            } else {
                var resultText = ""
                
                if calculationResult.x1 != nil {
                    resultText += "x1: " + calculationResult.x1! + "  "
                }
                
                if (calculationResult.x2 != nil) {
                     resultText += "x2: " + calculationResult.x2!
                }
                
                resultValue.text = resultText
            }
        }
    }
}
