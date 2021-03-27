//
//  Functions.swift
//  swift_test
//
//  Created by 李龙飞 on 2021/3/27.
//  Copyright © 2021 李龙飞. All rights reserved.
//

import Foundation

struct FunctionsTest {
    
    public func test() {
        print(greet(person: "Anna"))
        print(greetAgain(person: "Anna"))
        print(sayHelloWorld())
        print(greet(person: "Tim", alreadyGreeted: true))
//        greet(person: "Dave")
        print(printAndCount(string: "hello, world"))
        printWithoutCounting(string: "hello, world")
        if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
            print("min is \(bounds.min) and max is \(bounds.max)")
        }
        
        print(greeting(for: "Dave"))
        print(anotherGreeting(for: "Dave"))
        
        arithmeticMean(1, 2, 3, 4, 5)
        arithmeticMean(3, 8.25, 18.75)
        
        var currentValue = -4
        let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
        // moveNearerToZero now refers to the nested stepForward() function
        while currentValue != 0 {
            print("\(currentValue)... ")
            currentValue = moveNearerToZero(currentValue)
        }
        print("zero!")
    }
    
    func greet(person: String) -> String {
        let greeting = "Hello, " + person + "!"
        return greeting
    }
    
    func greetAgain(person: String) -> String {
        return "Hello again, " + person + "!"
    }
    
    func sayHelloWorld() -> String {
        return "hello, world"
    }
    
    func greet(person: String, alreadyGreeted: Bool) -> String {
        if alreadyGreeted {
            return greetAgain(person: person)
        } else {
            return greet(person: person)
        }
    }
    
    //无返回类型
//    func greet(person: String) {
//        print("Hello, \(person)!")
//    }
    
    func printAndCount(string: String) -> Int {
        print(string)
        return string.count
    }
    
    func printWithoutCounting(string: String) {
        let _ = printAndCount(string: string)
    }

    func minMax(array: [Int]) -> (min: Int, max: Int)? {
        if array.isEmpty { return nil }
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            }
        }
        return (currentMin, currentMax)
    }
    
    func greeting(for person: String) -> String {
        "Hello, " + person + "!"
    }


    func anotherGreeting(for person: String) -> String {
        return "Hello, " + person + "!"
    }

    func arithmeticMean(_ numbers: Double...) -> Double {
        var total: Double = 0
        for number in numbers {
            total += number
        }
        return total / Double(numbers.count)
    }

    func chooseStepFunction(backward: Bool) -> (Int) -> Int {
        func stepForward(input: Int) -> Int { return input + 1 }
        func stepBackward(input: Int) -> Int { return input - 1 }
        return backward ? stepBackward : stepForward
    }
}
