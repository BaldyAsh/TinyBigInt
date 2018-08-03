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
    
    func testSum1WithOverflow() {
        let first = TinyUInt128(firstHalf: 1, secondHalf: UInt64.max)
        let second = TinyUInt128(firstHalf: 1, secondHalf: 2)
        let result = first + second
        XCTAssertEqual(TinyUInt128(firstHalf: 3, secondHalf: 1), result)
    }
    
    func testSum2WithOverflow() {
        var num = TinyUInt128(firstHalf: 1, secondHalf: UInt64.max)
        num += TinyUInt128(firstHalf: 2, secondHalf: 4)
        XCTAssertEqual(TinyUInt128(firstHalf: 4, secondHalf: 3), num)
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
    
}
