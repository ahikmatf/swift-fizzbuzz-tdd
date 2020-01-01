//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by Fatah on 02/01/20.
//  Copyright © 2020 Fatah. All rights reserved.
//

import Foundation

class FizzBuzz {
    static func process(_ number: Int) -> String {
        if number.isMultiple(of: 15) {
            return "FizzBuzz"
        } else if number.isMultiple(of: 3) {
            return "Fizz"
        } else if number.isMultiple(of: 5) {
            return "Buzz"
        } else {
            return "\(number)"
        }
    }
}
