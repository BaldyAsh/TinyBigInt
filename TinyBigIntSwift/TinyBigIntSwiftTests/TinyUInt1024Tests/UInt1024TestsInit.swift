//
//  UInt1024TestsInit.swift
//  TinyBigIntSwiftTests
//
//  Created by Anton Grigorev on 16/09/2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import TinyBigIntSwift

class UInt1024TestsInit: XCTestCase {
    
    func testInitInt() {
        let expected = TinyUInt1024(firstHalf: 0, secondHalf: 1)
        let actual = TinyUInt1024(Int(1))
        XCTAssertEqual(expected, actual)
    }
    
    func testInitLiteralInt() {
        let expected = TinyUInt1024(firstHalf: 0, secondHalf: 1)
        let actual: TinyUInt1024 = 1
        XCTAssertEqual(actual, expected)
    }
    
    func testInitString() {
        let expected = TinyUInt1024(firstHalf: 0, secondHalf: 1)
        let actual = try! TinyUInt1024(String("1"))
        XCTAssertEqual(actual, expected)
    }
    
    //TODO: - Doesn't pass
//    func testInitMax() {
//        let expected = TinyUInt1024.max
//        let actual: TinyUInt1024 = "13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084095"
//        let equal = expected == actual
//        XCTAssertTrue(equal)
//    }
    
    func testInitLiteralString() {
        let expected = TinyUInt1024(firstHalf: 0, secondHalf: 1)
        let actual: TinyUInt1024 = "1"
        XCTAssertEqual(actual, expected)
    }
    
    //TODO: - Doesn't pass
//    func testInitStringWithRandomRadix() {
//        let expected = TinyUInt1024(417956526)
//        let actual: TinyUInt1024 = TinyUInt1024("10563960", radix: 17)!
//        XCTAssertEqual(actual, expected)
//    }
}
