//
//  Task3ViewController.swift
//  TestApp
//
//  Created by Yaroslav Verstiuk on 12/30/16.
//  Copyright © 2016 Yaroslav Verstiuk. All rights reserved.
//

import UIKit

class Task3ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var numbersToSort: UITextField!
    @IBOutlet weak var sortedNumbers: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        sortedNumbers.text = ""
    }
    
    @IBAction func sortNumbers(_ sender: UIButton) {
        let numbers = numbersToSort.text!
        
        if numbers.isEmpty {
            sortedNumbers.text = "You did not provide numbers to sort"
        } else {
            let sortedResult = TaskHelper.sortArray(numbers)
            sortedNumbers.text = sortedResult
        }
    }
}
