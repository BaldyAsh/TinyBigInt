//
//  UInt128TestsBinaryOperations.swift
//  tiny-bigint-swiftTests
//
//  Created by Антон Григорьев on 01.08.2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import tiny_bigint_swift

class UInt128TestsBinaryOperations: XCTestCase {
    
    func testSum1() {
        let first = TinyUInt128(firstHalf: 1, secondHalf: UInt64.max)
        let second = TinyUInt128(firstHalf: 1, secondHalf: 2)
        let result = first + second
        XCTAssertEqual(TinyUInt128(firstHalf: 3, secondHalf: 1), result)
    }
    
    func testSum2() {
        var num = TinyUInt128(firstHalf: 1, secondHalf: UInt64.max)
        num += TinyUInt128(firstHalf: 2, secondHalf: 4)
        XCTAssertEqual(TinyUInt128(firstHalf: 4, secondHalf: 3), num)
    }
    
    func testSum3() {
        let num = TinyUInt128.max
        let result = num.addingReportingOverflow(TinyUInt128.max)
        XCTAssertEqual(TinyUInt128.max-1, result.partialValue)
        XCTAssertTrue(result.overflow)
    }
    
    func testMinus1() {
        let first = TinyUInt128(firstHalf: 2, secondHalf: 1)
        let second = TinyUInt128(firstHalf: 1, secondHalf: 2)
        let result = first - second
        XCTAssertEqual(TinyUInt128(firstHalf: 0, secondHalf: UInt64.max), result)
    }
    
    func testMinus2() {
        let first = TinyUInt128(firstHalf: 2, secondHalf: 3)
        let second = TinyUInt128(firstHalf: 1, secondHalf: 2)
        let result = first - second
        XCTAssertEqual(TinyUInt128(firstHalf: 1, secondHalf: 1), result)
    }
    
    func testMinus3() {
        let num = TinyUInt128.min
        let result = num.subtractingReportingOverflow(TinyUInt128(1))
        XCTAssertEqual(TinyUInt128.max, result.partialValue)
        XCTAssertTrue(result.overflow)
    }
    
    func testMultiple1() {
        let first = TinyUInt128(firstHalf: 0, secondHalf: 2)
        let second = TinyUInt128(firstHalf: 0, secondHalf: 3)
        let result = first * second
        XCTAssertEqual(TinyUInt128(firstHalf: 0, secondHalf: 6), result)
    }
    
    func testMultiple2() {
        var num = TinyUInt128(firstHalf: 0, secondHalf: 2)
        num *= TinyUInt128(firstHalf: 0, secondHalf: 3)
        XCTAssertEqual(TinyUInt128(firstHalf: 0, secondHalf: 6), num)
    }
    
    func testMultiple3() {
        let num = TinyUInt128.max
        let result = num.multipliedReportingOverflow(by: TinyUInt128.max)
        XCTAssertEqual(TinyUInt128(1), result.partialValue)
        XCTAssertTrue(result.overflow)
    }
    
    func testDivide1() {
        let first = TinyUInt128(firstHalf: 0, secondHalf: 6)
        let second = TinyUInt128(firstHalf: 0, secondHalf: 3)
        let result = first / second
        XCTAssertEqual(TinyUInt128(firstHalf: 0, secondHalf: 2), result)
    }
    
    func testDivide2() {
        var num = TinyUInt128(firstHalf: 0, secondHalf: 6)
        num /= TinyUInt128(firstHalf: 0, secondHalf: 3)
        XCTAssertEqual(TinyUInt128(firstHalf: 0, secondHalf: 2), num)
    }
    
    func testDivide3() {
        let num = TinyUInt128.max
        let result = num.dividedReportingOverflow(by: TinyUInt128.min)
        XCTAssertEqual(TinyUInt128.max, result.partialValue)
        XCTAssertTrue(result.overflow)
    }
    
}
