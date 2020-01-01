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
        if number == 3 {
            return "Fizz"
        }
        
        return "\(number)"
    }
}

class FizzBuzzTests: XCTestCase {
    
    func testWhenInputIsOne() {
        let result = FizzBuzz.process(1)
        XCTAssertEqual(result, "1")
    }
    
    func testWhenInputIsTwo() {
        let result = FizzBuzz.process(2)
        XCTAssertEqual(result, "2")
    }
    
    func testWhenInputIsThreeReturnFizz() {
        let result = FizzBuzz.process(3)
        XCTAssertEqual(result, "Fizz")
    }
    
}
