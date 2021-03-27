//
//  BasicOperator.swift
//  swift_test
//
//  Created by 李龙飞 on 2021/3/26.
//  Copyright © 2021 李龙飞. All rights reserved.
//

import Foundation

struct BasicOperator {
    
    static func test() {
        let b = 10
        var a = 5
        a = b
        print(a)
        
        let (x, y) = (1, 2)
        // x is equal to 1, and y is equal to 2
        print(x,y)
        
        let name = "world"
        if name == "world" {
            print("hello, world")
        } else {
            print("I'm sorry \(name), but I don't recognize you")
        }
        
        var result1 = (1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" aren't compared
        var result2 = (3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
        var result3 = (4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"
        print(result1,result2,result3)
        
        let defaultColorName = "red"
        var userDefinedColorName: String?

        var colorNameToUse = userDefinedColorName ?? defaultColorName
        print(colorNameToUse)
        
        // Range Operators
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
        }
        let names = ["Anna", "Alex", "Brian", "Jack"]
        let count = names.count
        for i in 0..<count {
            print("Person \(i + 1) is called \(names[i])")
        }
        for name in names[2...] {
            print(name)
        }
        for name in names[...2] {
            print(name)
        }
        for name in names[..<2] {
            print(name)
        }
        let range = ...5
        print(range.contains(7))
        print(range.contains(4))
        print(range.contains(-1))
        
        // Logical Operators
        let allowedEntry = false
        if !allowedEntry {
            print("ACCESS DENIED")
        }
        let enteredDoorCode = true
        let passedRetinaScan = false
        if enteredDoorCode && passedRetinaScan {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        let hasDoorKey = false
        let knowsOverridePassword = true
        if hasDoorKey || knowsOverridePassword {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
    }
    
}
