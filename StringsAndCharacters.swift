//
//  StringsAndCharacters.swift
//  swift_test
//
//  Created by 李龙飞 on 2021/3/27.
//  Copyright © 2021 李龙飞. All rights reserved.
//

import Foundation

struct StringsAndCharacters {
    static func test(){
        let someString = "Some string literal value"
        let quotation = """
        The White Rabbit put on his spectacles.  "Where shall I begin,
        please your Majesty?" he asked.

        "Begin at the beginning," the King said gravely, "and go on
        till you come to the end; then stop."
        """
        let singleLineString = "These are the same."
        let multilineString = """
        These are the same.
        """
        let softWrappedQuotation = """
        The White Rabbit put on his spectacles.  "Where shall I begin, \
        please your Majesty?" he asked.

        "Begin at the beginning," the King said gravely, "and go on \
        till you come to the end; then stop."
        """
        let lineBreaks = """

        This string starts with a line break.
        It also ends with a line break.

        """
        
        let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
        let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
        let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
        let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496
        
        let threeDoubleQuotationMarks = """
        Escaping the first quotation mark \"""
        Escaping all three quotation marks \"\"\"
        """
        
        var emptyString = ""               // empty string literal
        var anotherEmptyString = String()  // initializer syntax
        // these two strings are both empty, and are equivalent to each other
        if emptyString.isEmpty {
            print("Nothing to see here")
        }
        
        var variableString = "Horse"
        variableString += " and carriage"
        
        for character in "Dog!🐶" {
            print(character)
        }
        
        let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
        let catString = String(catCharacters)
        print(catString)
        
        let string1 = "hello"
        let string2 = " there"
        var welcome = string1 + string2
        var instruction = "look over"
        instruction += string2
        let exclamationMark: Character = "!"
        welcome.append(exclamationMark)
        
        let badStart = """
        one
        two
        """
        let end = """
        three
        """
        print(badStart + end)
        
        let goodStart = """
        one
        two

        """
        print(goodStart + end)
        
        let multiplier = 3
        let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
        
        print(#"Write an interpolated string in Swift using \(multiplier)."#)
        print(#"6 times 7 is \#(6 * 7)."#)
        
        let eAcute: Character = "\u{E9}"
        let combinedEAcute: Character = "\u{65}\u{301}"
        let precomposed: Character = "\u{D55C}"
        let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"
        let enclosedEAcute: Character = "\u{E9}\u{20DD}"
        let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
        let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
        print("unusualMenagerie has \(unusualMenagerie.count) characters")
        var word = "cafe"
        print("the number of characters in \(word) is \(word.count)")
        word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301
        print("the number of characters in \(word) is \(word.count)")
        
        var greeting = "Guten Tag!"
        print(greeting[greeting.startIndex])
        print(greeting[greeting.index(before: greeting.endIndex)])
        print(greeting[greeting.index(after: greeting.startIndex)])
        var index = greeting.index(greeting.startIndex, offsetBy: 7)
        print(greeting[index])
        for index in greeting.indices {
            print("\(greeting[index]) ", terminator: "")
        }
        print("\n")
        
        welcome = "hello"
        welcome.insert("!", at: welcome.endIndex)
        welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
        print(welcome)
        welcome.remove(at: welcome.index(before: welcome.endIndex))
        print(welcome)
        let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
        welcome.removeSubrange(range)
        print(welcome)
        
        greeting = "Hello, world!"
        index = greeting.firstIndex(of: ",") ?? greeting.endIndex
        let beginning = greeting[..<index]
        print(beginning)
        
        // Convert the result to a String for long-term storage.
        let newString = String(beginning)
        print(newString)
    }
}
