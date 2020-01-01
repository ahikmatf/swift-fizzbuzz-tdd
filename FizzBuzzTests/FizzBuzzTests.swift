//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Fatah on 02/01/20.
//  Copyright © 2020 Fatah. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class FizzBuzz {
    static func process(_ number: Int) -> String {
        if number.isMultiple(of: 15) {
            return "FizzBuzz"
        } else if number % 3 == 0 {
            return "Fizz"
        } else if number % 5 == 0 {
            return "Buzz"
        }
        
        return "\(number)"
    }
}

class FizzBuzzTests: XCTestCase {
    
    func testWhenInputIsOne() {
        expecting(1, willResult: "1")
    }
    
    func testWhenInputIsTwo() {
        expecting(2, willResult: "2")
    }
    
    func testWhenInputIsThreeReturnFizz() {
        expecting(3, willResult: "Fizz")
    }
    
    func testWhenInputIsMultipleOfThreeThenReturnFizz() {
        expecting(6, willResult: "Fizz")
        expecting(9, willResult: "Fizz")
        expecting(12, willResult: "Fizz")
    }
    
    func testWhenInputIsFiveReturnBuzz() {
        expecting(5, willResult: "Buzz")
    }
    
    func testWhenInputIsMultipleOfFiveThenReturnBuzz() {
        expecting(10, willResult: "Buzz")
        expecting(20, willResult: "Buzz")
        expecting(25, willResult: "Buzz")
    }
    
    func testWhenInputIsFifteenThenReturnFizzBuzz() {
        expecting(15, willResult: "FizzBuzz")
    }
    
    func testWhenInputIsMultipleOfFifteenThenReturnFizzBuzz() {
        expecting(15, willResult: "FizzBuzz")
        expecting(30, willResult: "FizzBuzz")
        expecting(45, willResult: "FizzBuzz")
    }
    
    // MARK :- Helpers
    private func expecting(_ number: Int, willResult target: String, file: StaticString = #file, line: UInt = #line) {
        let result = FizzBuzz.process(number)
        XCTAssertEqual(result, target, file: file, line: line)
    }
}
