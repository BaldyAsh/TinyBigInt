//
//  UInt1024TestsBinaryOperations.swift
//  TinyBigIntSwiftTests
//
//  Created by Anton Grigorev on 16/09/2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import TinyBigIntSwift

class UInt1024TestsBinaryOperations: XCTestCase {
    
    func testSum1() {
        let first = TinyUInt1024(firstHalf: 1, secondHalf: TinyUInt512.max)
        let second = TinyUInt1024(firstHalf: 1, secondHalf: 2)
        let result = first + second
        XCTAssertEqual(TinyUInt1024(firstHalf: 3, secondHalf: 1), result)
    }
    
    func testSum2() {
        var num = TinyUInt1024(firstHalf: 1, secondHalf: TinyUInt512.max)
        num += TinyUInt1024(firstHalf: 2, secondHalf: 4)
        XCTAssertEqual(TinyUInt1024(firstHalf: 4, secondHalf: 3), num)
    }
    
    func testSum3() {
        let num = TinyUInt1024.max
        let result = num.addingReportingOverflow(TinyUInt1024.max)
        XCTAssertEqual(TinyUInt1024.max-1, result.partialValue)
        XCTAssertTrue(result.overflow)
    }
    
    func testMinus1() {
        let first = TinyUInt1024(firstHalf: 2, secondHalf: 1)
        let second = TinyUInt1024(firstHalf: 1, secondHalf: 2)
        let result = first - second
        XCTAssertEqual(TinyUInt1024(firstHalf: 0, secondHalf: TinyUInt512.max), result)
    }
    
    func testMinus2() {
        let first = TinyUInt1024(firstHalf: 2, secondHalf: 3)
        let second = TinyUInt1024(firstHalf: 1, secondHalf: 2)
        let result = first - second
        XCTAssertEqual(TinyUInt1024(firstHalf: 1, secondHalf: 1), result)
    }
    
    func testMinus3() {
        let num = TinyUInt1024.min
        let result = num.subtractingReportingOverflow(TinyUInt1024(1))
        XCTAssertEqual(TinyUInt1024.max, result.partialValue)
        XCTAssertTrue(result.overflow)
    }
    
    //TODO: - Doesn't pass
//    func testMultiple1() {
//        let first = TinyUInt1024(firstHalf: 0, secondHalf: 2)
//        let second = TinyUInt1024(firstHalf: 0, secondHalf: 3)
//        let result = first * second
//        XCTAssertEqual(TinyUInt1024(firstHalf: 0, secondHalf: 6), result)
//    }
//
//    func testMultiple2() {
//        var num = TinyUInt1024(firstHalf: 0, secondHalf: 2)
//        num *= TinyUInt1024(firstHalf: 0, secondHalf: 3)
//        XCTAssertEqual(TinyUInt1024(firstHalf: 0, secondHalf: 6), num)
//    }
//
//    func testMultiple3() {
//        let num = TinyUInt1024.max
//        let result = num.multipliedReportingOverflow(by: TinyUInt1024.max)
//        XCTAssertEqual(TinyUInt1024(1), result.partialValue)
//        XCTAssertTrue(result.overflow)
//    }
    
    func testDivide1() {
        let first = TinyUInt1024(firstHalf: 0, secondHalf: 6)
        let second = TinyUInt1024(firstHalf: 0, secondHalf: 3)
        let result = first / second
        XCTAssertEqual(TinyUInt1024(firstHalf: 0, secondHalf: 2), result)
    }
    
    func testDivide2() {
        var num = TinyUInt1024(firstHalf: 0, secondHalf: 6)
        num /= TinyUInt1024(firstHalf: 0, secondHalf: 3)
        XCTAssertEqual(TinyUInt1024(firstHalf: 0, secondHalf: 2), num)
    }
    
    func testDivide3() {
        let num = TinyUInt1024.max
        let result = num.dividedReportingOverflow(by: TinyUInt1024.min)
        XCTAssertEqual(TinyUInt1024.max, result.partialValue)
        XCTAssertTrue(result.overflow)
    }
    
    func testDivide4() {
        let first = TinyUInt1024(firstHalf: 0, secondHalf: 0)
        let second = TinyUInt1024(firstHalf: 0, secondHalf: 3)
        let result = first / second
        XCTAssertEqual(TinyUInt1024(firstHalf: 0, secondHalf: 0), result)
    }
    
}
