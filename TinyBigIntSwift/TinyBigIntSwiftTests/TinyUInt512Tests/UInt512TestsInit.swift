//
//  UInt512TestsInit.swift
//  TinyBigIntSwiftTests
//
//  Created by Антон Григорьев on 04.08.2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import TinyBigIntSwift

class UInt512TestsInit: XCTestCase {
    
    func testInitInt() {
        let expected = TinyUInt512(firstHalf: 0, secondHalf: 1)
        let actual = TinyUInt512(Int(1))
        XCTAssertEqual(expected, actual)
    }
    
    func testInitLiteralInt() {
        let expected = TinyUInt512(firstHalf: 0, secondHalf: 1)
        let actual: TinyUInt512 = 1
        XCTAssertEqual(actual, expected)
    }
    
    func testInitString() {
        let expected = TinyUInt512(firstHalf: 0, secondHalf: 1)
        let actual = try! TinyUInt512(String("1"))
        XCTAssertEqual(actual, expected)
    }
    
    func testInitMax() {
        let expected = TinyUInt512.max
        let actual: TinyUInt512 = "13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084095"
        let equal = expected == actual
        XCTAssertTrue(equal)
    }
    
    func testInitLiteralString() {
        let expected = TinyUInt512(firstHalf: 0, secondHalf: 1)
        let actual: TinyUInt512 = "1"
        XCTAssertEqual(actual, expected)
    }
    
    func testInitStringWithRandomRadix() {
        let expected = TinyUInt512(417956526)
        let actual: TinyUInt512 = TinyUInt512("10563960", radix: 17)!
        XCTAssertEqual(actual, expected)
    }
}
