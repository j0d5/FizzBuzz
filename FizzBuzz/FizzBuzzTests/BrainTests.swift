//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by Johannes on 19.09.16.
//  Copyright © 2016 Johannes Steudle. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
   
   let brain = Brain()
   
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
//        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
//        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
   func testIsDivisibleByThree() {
      let result = brain.isDivisibleByThree(number: 3)
      XCTAssertEqual(result, true)
   }
   
   func testIsNotDivisibleByThree() {
      let result = brain.isDivisibleByThree(number: 1)
      XCTAssertEqual(result, false)
   }
   
   func testIsDivisibleByFive() {
      let result = brain.isDivisibleByFive(number: 5)
      XCTAssertEqual(result, true)
   }
   
   func testIsNotDivisibleByFive() {
      let result = brain.isDivisibleByFive(number: 1)
      XCTAssertEqual(result, false)
   }
   
   func testIsDivisibleByThreeAndFive() {
      let result = brain.isDivisibleByThreeAndFive(number: 30)
      XCTAssertEqual(result, true)
   }
   
   func testIsNotDivisibleByThreeAndFive() {
      let result = brain.isDivisibleByThreeAndFive(number: 1)
      XCTAssertEqual(result, false)
   }
   
   func testSayFizz() {
      let result = brain.check(number: 3)
      XCTAssertEqual(result, "Fizz")
   }
   
   func testSayBuzz() {
      let result = brain.check(number: 5)
      XCTAssertEqual(result, "Buzz")
   }
   
   func testSayFizzBuzz() {
      let result = brain.check(number: 15)
      XCTAssertEqual(result, "FizzBuzz")
   }
   
   func testSayOne() {
      let result = brain.check(number: 1)
      XCTAssertEqual(result, "1")
   }
}
