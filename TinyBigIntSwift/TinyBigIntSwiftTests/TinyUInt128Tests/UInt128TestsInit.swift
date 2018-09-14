//
//  UInt128Tests.swift
//  tiny-bigint-swiftTests
//
//  Created by Георгий Фесенко on 14/07/2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import TinyBigIntSwift

class UInt128TestsInit: XCTestCase {
    
    func testInitInt() {
        let expected = TinyUInt128(firstHalf: 0, secondHalf: 1)
        let actual = TinyUInt128(Int(1))
        XCTAssertEqual(expected, actual)
    }
    
    func testInitLiteralInt() {
        let expected = TinyUInt128(firstHalf: 0, secondHalf: 1)
        let actual: TinyUInt128 = 1
        XCTAssertEqual(actual, expected)
    }
    
    func testInitString() {
        let expected = TinyUInt128(firstHalf: 0, secondHalf: 1)
        let actual = try! TinyUInt128(String("1"))
        XCTAssertEqual(actual, expected)
    }
    
    func testInitLiteralString() {
        let expected = TinyUInt128(firstHalf: 0, secondHalf: 1)
        let actual: TinyUInt128 = "1"
        XCTAssertEqual(actual, expected)
    }
    
    func testInitStringWithRandomRadix() {
        let expected = TinyUInt128(firstHalf: 0, secondHalf: 6467)
        let actual: TinyUInt128 = TinyUInt128("1567", radix: 17)!
        XCTAssertEqual(actual, expected)
    }
}
