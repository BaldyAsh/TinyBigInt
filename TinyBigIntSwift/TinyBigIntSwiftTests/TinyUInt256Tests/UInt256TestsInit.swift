//
//  UInt256TestsInit.swift
//  TinyBigIntSwiftTests
//
//  Created by Антон Григорьев on 04.08.2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import TinyBigIntSwift

class UInt256TestsInit: XCTestCase {
    
    func testInitInt() {
        let expected = TinyUInt256(firstHalf: 0, secondHalf: 1)
        let actual = TinyUInt256(Int(1))
        XCTAssertEqual(expected, actual)
    }
    
    func testInitLiteralInt() {
        let expected = TinyUInt256(firstHalf: 0, secondHalf: 1)
        let actual: TinyUInt256 = 1
        XCTAssertEqual(actual, expected)
    }
    
    func testInitString() {
        let expected = TinyUInt256(firstHalf: 0, secondHalf: 1)
        let actual = try! TinyUInt256(String("1"))
        XCTAssertEqual(actual, expected)
    }
    
    func testInitLiteralString() {
        let expected = TinyUInt256(firstHalf: 0, secondHalf: 1)
        let actual: TinyUInt256 = "1"
        XCTAssertEqual(actual, expected)
    }
    
}
