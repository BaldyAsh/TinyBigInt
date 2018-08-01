//
//  UInt128TestsComparable.swift
//  tiny-bigint-swiftTests
//
//  Created by Антон Григорьев on 01.08.2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import tiny_bigint_swift

class UInt128TestsComparable: XCTestCase {
    
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
    
}
