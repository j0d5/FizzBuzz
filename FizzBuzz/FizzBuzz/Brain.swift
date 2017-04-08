//
//  Brain.swift
//  FizzBuzz
//
//  Created by Johannes on 19.09.16.
//  Copyright © 2016 Johannes Steudle. All rights reserved.
//

import Foundation

class Brain: NSObject {
   
   func isDivisible(_ number: Int, _ byDivisor: Int) -> Bool {
      return number % byDivisor == 0
   }
   
   func isDivisibleByThree(number: Int) -> Bool {
      return isDivisible(number, 3)
   }
   
   func isDivisibleByFive(number: Int) -> Bool {
      return isDivisible(number, 5)
   }
   
   func isDivisibleByThreeAndFive(number: Int) -> Bool {
      return isDivisible(number, 15)
   }
   
   func check(number: Int) -> String {
      if(isDivisibleByThreeAndFive(number: number)) {
         return "FizzBuzz"
      } else if isDivisibleByThree(number: number) {
         return "Fizz"
      } else if (isDivisibleByFive(number: number)) {
         return "Buzz"
      } else if (number == 1) {
         return "\(1)"
      }
      return ""
   }
}
