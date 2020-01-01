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
        if number % 3 == 0 {
            return "Fizz"
        }
        
        return "\(number)"
    }
}

class FizzBuzzTests: XCTestCase {
    
    func testWhenInputIsOne() {
        expecting(1, willResult: "1")
    }
    
    func testWhenInputIsTwo() {
        let result = FizzBuzz.process(2)
        XCTAssertEqual(result, "2")
    }
    
    func testWhenInputIsThreeReturnFizz() {
        let result = FizzBuzz.process(3)
        XCTAssertEqual(result, "Fizz")
    }
    
    func testWhenInputIsMultipleOfThreeThenReturnFizz() {
        let resultOf6 = FizzBuzz.process(6)
        XCTAssertEqual(resultOf6, "Fizz")
        
        let resultOf9 = FizzBuzz.process(9)
        XCTAssertEqual(resultOf9, "Fizz")
        
        let resultOf12 = FizzBuzz.process(12)
        XCTAssertEqual(resultOf12, "Fizz")
    }
    
    
    // MARK :- Helpers
    private func expecting(_ number: Int, willResult target: String) {
        let result = FizzBuzz.process(number)
        XCTAssertEqual(result, target)
    }
}
