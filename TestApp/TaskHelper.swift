//
//  TaskHelper.swift
//  TestApp
//
//  Created by Yaroslav Verstiuk on 12/30/16.
//  Copyright © 2016 Yaroslav Verstiuk. All rights reserved.
//

import Foundation

class TaskHelper {
    /**
     Resolves Quadratic Formula
     - parameters:
        - a: Int A value
        - b: Int B value
        - c: Int C value
     - returns:
        - x1: String x1 value
        - x2: String x2 value
        - noResult: Bool return true if no result was found
    */
    static func resolveQuadraticFormula(a:Int, b:Int, c:Int) -> (x1:String?, x2:String?, noResult:Bool) {
        let a = Double(a)
        let b = Double(b)
        let c = Double(c)
        
        let rootVal = (pow(b,2) - (4*a*c))
        
        if rootVal < 0 {
            return (nil, nil, true)
        } else {
            var x1 = (-b - (sqrt(rootVal))) / (2 * a)
            var x2 = (-b + (sqrt(rootVal))) / (2 * a)
            
            x1 = (Double(round(100 * x1) / 100))
            x2 = (Double(round(100 * x2) / 100))
            
            func checkResult(_ x: Double) -> Bool {
                return round((a * pow(x,2)) + (b * x) + c) == 0
                
            }
            
            let checkX1 = checkResult(x1)
            let checkX2 = checkResult(x2)
            
            return (checkX1 ? String(x1) : nil, checkX2 ? String(x2) : nil, false)
        }
    }
    /**
     Generates fibonacci numbers to provided index
     - parameters:
        - index: Int Index
     - returns:
        Generated fibonacci numbers
    */
    static func generateFibNumbers(_ index: Int) -> String {
        var prev = 0
        var next = 1
        var numbers = "Numbers: "
        
        for i in 1...index {
            let sum = prev + next
            let separator = (i == index) ? "" : ","
            numbers += String(prev) + separator + " "
            prev = next
            next = sum
        }
        return numbers
    }
    /**
     Sort provided numbers in ascending order
     - parameters:
        - numbers: String, numbers separated by comma symbol
     - returns:
        Sorted numbers
    */
    static func sortArray(_ numbers: String) -> String {
        var numbersArr = numbers.components(separatedBy: ",").flatMap{Int($0)}
        let length = numbersArr.count
        
        for (i, _) in numbersArr.enumerated() {
            let next = i + 1
            if (next <= length) {
                for (x, _) in numbersArr.enumerated() {
                    if (numbersArr[i] < numbersArr[x]) {
                        let temp = numbersArr[x]
                        numbersArr[x] = numbersArr[i]
                        numbersArr[i] = temp
                    }
                }
            }
        }
        return "Sorted numbers: \(numbersArr.map{String($0)}.joined(separator: ", ")) "
    }
}

