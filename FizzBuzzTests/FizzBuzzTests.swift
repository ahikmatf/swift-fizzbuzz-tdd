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
        return "1"
    }
}

class FizzBuzzTests: XCTestCase {
    
    func testWhenInputIsOne() {
        let result = FizzBuzz.process(1)
        XCTAssertEqual(result, "1")
    }
    
}
