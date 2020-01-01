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
    
    
    // MARK :- Helpers
    private func expecting(_ number: Int, willResult target: String) {
        let result = FizzBuzz.process(number)
        XCTAssertEqual(result, target)
    }
}
