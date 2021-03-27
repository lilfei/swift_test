//
//  test_1.swift
//  swift_test
//
//  Created by 李龙飞 on 2021/3/26.
//  Copyright © 2021 李龙飞. All rights reserved.
//

import Foundation

struct Test_1 {
    
    static func test() {
        print("static func test")
        
        // 常量变量
        var myVariable = 42
        myVariable = 50
        
        let myConstant = 42
        
        print(myVariable)
        print(myConstant)
        
        // 类型转换
        let possibleNumber = "123"
        let convertedNumber = Int(possibleNumber)
        print(type(of: possibleNumber))
        print(type(of: convertedNumber))
        if convertedNumber != nil {
            print("convertedNumber has an integer value of \(convertedNumber!).")
        }
        if let actualNumber = Int(possibleNumber) {
            print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
        } else {
            print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
        }
        
        
        // nil
        var serverResponseCode: Int? = 404
        // serverResponseCode contains an actual Int value of 404
        serverResponseCode = nil
        // serverResponseCode now contains no value
        print(serverResponseCode)
        var surveyAnswer: String?
        // surveyAnswer is automatically set to nil
        print(surveyAnswer)

        // Optional Binding
        if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
        if let firstNumber = Int("4") {
            if let secondNumber = Int("42") {
                if firstNumber < secondNumber && secondNumber < 100 {
                    print("\(firstNumber) < \(secondNumber) < 100")
                }
            }
        }
    }

}


