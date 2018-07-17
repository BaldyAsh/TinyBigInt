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
    
    func testAddFunction() {
        let first = BigUInt128Custom(numbers: (12, 12, UInt32.max))
        let second = BigUInt128Custom(numbers: (12, 12, 2))
        let result = first + second
        let shouldBe: (UInt32, UInt32, UInt32) = (24, 25, 1)
        
        XCTAssertEqual(result, BigUInt128Custom(numbers: shouldBe))
    }
    
    
    func testEqualInt() {
        let expected = TinyUInt128(firstHalf: 0, secondHalf: 1)
        let actual = TinyUInt128(Int(1))
        XCTAssertEqual(expected, actual)
    }
    
    func testCastToInt() {
        let first = TinyUInt128(firstHalf: 1, secondHalf: UInt64.max)
        let second = TinyUInt128(firstHalf: 1, secondHalf: 2)
        let result = first + second
        XCTAssertEqual(TinyUInt128(firstHalf: 3, secondHalf: 1), result)
    }
    
}
