//
//  UInt256TestsBinaryOperations.swift
//  TinyBigIntSwiftTests
//
//  Created by Антон Григорьев on 04.08.2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import TinyBigIntSwift

class UInt256TestsBinaryOperations: XCTestCase {
    
    func testSum1() {
        let first = TinyUInt256(firstHalf: 1, secondHalf: TinyUInt128.max)
        let second = TinyUInt256(firstHalf: 1, secondHalf: 2)
        let result = first + second
        XCTAssertEqual(TinyUInt256(firstHalf: 3, secondHalf: 1), result)
    }
    
    func testSum2() {
        var num = TinyUInt256(firstHalf: 1, secondHalf: TinyUInt128.max)
        num += TinyUInt256(firstHalf: 2, secondHalf: 4)
        XCTAssertEqual(TinyUInt256(firstHalf: 4, secondHalf: 3), num)
    }
    
    func testSum3() {
        let num = TinyUInt256.max
        let result = num.addingReportingOverflow(TinyUInt256.max)
        XCTAssertEqual(TinyUInt256.max-1, result.partialValue)
        XCTAssertTrue(result.overflow)
    }
    
    func testMinus1() {
        let first = TinyUInt256(firstHalf: 2, secondHalf: 1)
        let second = TinyUInt256(firstHalf: 1, secondHalf: 2)
        let result = first - second
        XCTAssertEqual(TinyUInt256(firstHalf: 0, secondHalf: TinyUInt128.max), result)
    }
    
    func testMinus2() {
        let first = TinyUInt256(firstHalf: 2, secondHalf: 3)
        let second = TinyUInt256(firstHalf: 1, secondHalf: 2)
        let result = first - second
        XCTAssertEqual(TinyUInt256(firstHalf: 1, secondHalf: 1), result)
    }
    
    func testMinus3() {
        let num = TinyUInt256.min
        let result = num.subtractingReportingOverflow(TinyUInt256(1))
        XCTAssertEqual(TinyUInt256.max, result.partialValue)
        XCTAssertTrue(result.overflow)
    }
    
    func testMultiple1() {
        let first = TinyUInt256(firstHalf: 0, secondHalf: 2)
        let second = TinyUInt256(firstHalf: 0, secondHalf: 3)
        let result = first * second
        XCTAssertEqual(TinyUInt256(firstHalf: 0, secondHalf: 6), result)
    }
    
    func testMultiple2() {
        var num = TinyUInt256(firstHalf: 0, secondHalf: 2)
        num *= TinyUInt256(firstHalf: 0, secondHalf: 3)
        XCTAssertEqual(TinyUInt256(firstHalf: 0, secondHalf: 6), num)
    }
    
    func testMultiple3() {
        let num = TinyUInt256.max
        let result = num.multipliedReportingOverflow(by: TinyUInt256.max)
        XCTAssertEqual(TinyUInt256(1), result.partialValue)
        XCTAssertTrue(result.overflow)
    }
    
    func testDivide1() {
        let first = TinyUInt256(firstHalf: 0, secondHalf: 6)
        let second = TinyUInt256(firstHalf: 0, secondHalf: 3)
        let result = first / second
        XCTAssertEqual(TinyUInt256(firstHalf: 0, secondHalf: 2), result)
    }
    
    func testDivide2() {
        var num = TinyUInt256(firstHalf: 0, secondHalf: 6)
        num /= TinyUInt256(firstHalf: 0, secondHalf: 3)
        XCTAssertEqual(TinyUInt256(firstHalf: 0, secondHalf: 2), num)
    }
    
    func testDivide3() {
        let num = TinyUInt256.max
        let result = num.dividedReportingOverflow(by: TinyUInt256.min)
        XCTAssertEqual(TinyUInt256.max, result.partialValue)
        XCTAssertTrue(result.overflow)
    }
    
    func testDivide4() {
        let first = TinyUInt128(firstHalf: 0, secondHalf: 0)
        let second = TinyUInt128(firstHalf: 0, secondHalf: 3)
        let result = first / second
        XCTAssertEqual(TinyUInt128(firstHalf: 0, secondHalf: 0), result)
    }
    
}
