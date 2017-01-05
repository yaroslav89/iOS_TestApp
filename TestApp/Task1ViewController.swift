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
        let A = Double(valueA.text!)
        let B = Double(valueB.text!)
        let C = Double(valueC.text!)
        
        if A == nil || B == nil || C == nil {
            resultValue.text = "Provide correct vallues"
        } else {
            let calculationResult = TaskHelper.resolveQuadraticFormula(a: A!, b: B!, c: C!)
            
            if calculationResult.noResult {
                resultValue.text = "No Result"
            } else {
                resultValue.text = "\(calculationResult.x1 != nil ? "x1: \(calculationResult.x1!)" : "")  \(calculationResult.x2 != nil ? "x2: \(calculationResult.x2!)" : "")"
            }
        }
    }
}
