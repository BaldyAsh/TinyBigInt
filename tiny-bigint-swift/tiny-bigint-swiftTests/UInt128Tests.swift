//
//  UInt128Tests.swift
//  tiny-bigint-swiftTests
//
//  Created by Георгий Фесенко on 14/07/2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import tiny_bigint_swift


class UInt128Tests: XCTestCase {
    
    func testEqualInitInt() {
        let expected = TinyUInt128(firstHalf: 0, secondHalf: 1)
        let actual = TinyUInt128(Int(1))
        XCTAssertEqual(expected, actual)
    }
    
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

    func testComparable1() {
        let first = TinyUInt128(firstHalf: 1, secondHalf: UInt64.max)
        let second = TinyUInt128(firstHalf: 1, secondHalf: 2)
        let result = second < first
        XCTAssertTrue(result)
    }
    
    func testComparable2() {
        let first = TinyUInt128(firstHalf: 1, secondHalf: UInt64.max)
        let second = TinyUInt128(firstHalf: 1, secondHalf: 2)
        let result = first < second
        XCTAssertFalse(result)
    }
    
    func testComparable3() {
        let first = TinyUInt128(firstHalf: 1, secondHalf: UInt64.max)
        let second = TinyUInt128(firstHalf: 1, secondHalf: 2)
        let result = second > first
        XCTAssertFalse(result)
    }
    
    func testComparable4() {
        let first = TinyUInt128(firstHalf: 1, secondHalf: UInt64.max)
        let second = TinyUInt128(firstHalf: 1, secondHalf: 2)
        let result = first > second
        XCTAssertTrue(result)
    }
    
    func testEquatable1() {
        let first = TinyUInt128(firstHalf: 1, secondHalf: 2)
        let second = TinyUInt128(firstHalf: 1, secondHalf: 2)
        let result = first == second
        XCTAssertTrue(result)
    }
    
    func testEquatable2() {
        let first = TinyUInt128(firstHalf: 1, secondHalf: 2)
        let second = TinyUInt128(firstHalf: 1, secondHalf: 3)
        let result = first == second
        XCTAssertFalse(result)
    }
    
    
}
