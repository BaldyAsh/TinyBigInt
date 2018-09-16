//
//  UInt512TestsBinaryOperations.swift
//  TinyBigIntSwiftTests
//
//  Created by Антон Григорьев on 04.08.2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import TinyBigIntSwift

class UInt512TestsBinaryOperations: XCTestCase {
    
    func testSum1() {
        let first = TinyUInt512(firstHalf: 1, secondHalf: TinyUInt256.max)
        let second = TinyUInt512(firstHalf: 1, secondHalf: 2)
        let result = first + second
        XCTAssertEqual(TinyUInt512(firstHalf: 3, secondHalf: 1), result)
    }
    
    func testSum2() {
        var num = TinyUInt512(firstHalf: 1, secondHalf: TinyUInt256.max)
        num += TinyUInt512(firstHalf: 2, secondHalf: 4)
        XCTAssertEqual(TinyUInt512(firstHalf: 4, secondHalf: 3), num)
    }
    
    func testSum3() {
        let num = TinyUInt512.max
        let result = num.addingReportingOverflow(TinyUInt512.max)
        XCTAssertEqual(TinyUInt512.max-1, result.partialValue)
        XCTAssertTrue(result.overflow)
    }
    
    func testMinus1() {
        let first = TinyUInt512(firstHalf: 2, secondHalf: 1)
        let second = TinyUInt512(firstHalf: 1, secondHalf: 2)
        let result = first - second
        XCTAssertEqual(TinyUInt512(firstHalf: 0, secondHalf: TinyUInt256.max), result)
    }
    
    func testMinus2() {
        let first = TinyUInt512(firstHalf: 2, secondHalf: 3)
        let second = TinyUInt512(firstHalf: 1, secondHalf: 2)
        let result = first - second
        XCTAssertEqual(TinyUInt512(firstHalf: 1, secondHalf: 1), result)
    }
    
    func testMinus3() {
        let num = TinyUInt512.min
        let result = num.subtractingReportingOverflow(TinyUInt512(1))
        XCTAssertEqual(TinyUInt512.max, result.partialValue)
        XCTAssertTrue(result.overflow)
    }
    
    func testMultiple1() {
        let first = TinyUInt512(firstHalf: 0, secondHalf: 2)
        let second = TinyUInt512(firstHalf: 0, secondHalf: 3)
        let result = first * second
        XCTAssertEqual(TinyUInt512(firstHalf: 0, secondHalf: 6), result)
    }
    
    func testMultiple2() {
        var num = TinyUInt512(firstHalf: 0, secondHalf: 2)
        num *= TinyUInt512(firstHalf: 0, secondHalf: 3)
        XCTAssertEqual(TinyUInt512(firstHalf: 0, secondHalf: 6), num)
    }
    
    func testMultiple3() {
        let num = TinyUInt512.max
        let result = num.multipliedReportingOverflow(by: TinyUInt512.max)
        XCTAssertEqual(TinyUInt512(1), result.partialValue)
        XCTAssertTrue(result.overflow)
    }
    
    func testDivide1() {
        let first = TinyUInt512(firstHalf: 0, secondHalf: 6)
        let second = TinyUInt512(firstHalf: 0, secondHalf: 3)
        let result = first / second
        XCTAssertEqual(TinyUInt512(firstHalf: 0, secondHalf: 2), result)
    }
    
    func testDivide2() {
        var num = TinyUInt512(firstHalf: 0, secondHalf: 6)
        num /= TinyUInt512(firstHalf: 0, secondHalf: 3)
        XCTAssertEqual(TinyUInt512(firstHalf: 0, secondHalf: 2), num)
    }
    
    func testDivide3() {
        let num = TinyUInt512.max
        let result = num.dividedReportingOverflow(by: TinyUInt512.min)
        XCTAssertEqual(TinyUInt512.max, result.partialValue)
        XCTAssertTrue(result.overflow)
    }
    
    func testDivide4() {
        let first = TinyUInt512(firstHalf: 0, secondHalf: 0)
        let second = TinyUInt512(firstHalf: 0, secondHalf: 3)
        let result = first / second
        XCTAssertEqual(TinyUInt512(firstHalf: 0, secondHalf: 0), result)
    }
    
}
