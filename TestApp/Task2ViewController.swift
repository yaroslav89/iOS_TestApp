//
//  Task2ViewController.swift
//  TestApp
//
//  Created by Yaroslav Verstiuk on 12/30/16.
//  Copyright © 2016 Yaroslav Verstiuk. All rights reserved.
//

import UIKit

class Task2ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var indexValue: UITextField!
    @IBOutlet weak var resultValue: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        indexValue.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        resultValue.text = ""
    }
    
    
    @IBAction func generateFibNumbers(_ sender: UIButton) {
        let enteredValue = indexValue.text!
        
        if !enteredValue.isEmpty {
            let numbers = TaskHelper.generateFibNumbers(Int(enteredValue)!)
            resultValue.text = numbers
        } else {
            resultValue.text = "Enter Index"
        }
    }
}
