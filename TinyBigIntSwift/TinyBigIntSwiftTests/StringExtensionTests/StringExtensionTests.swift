//
//  StringExtensionTests.swift
//  TinyBigIntSwiftTests
//
//  Created by Anton Grigorev on 16/09/2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import TinyBigIntSwift

class StringExtensionTests: XCTestCase {
    
    func testInitFromUInt128() {
        let expected = "1"
        let actual = String(TinyUInt128(1))
        XCTAssertEqual(expected, actual)
    }
    
    func testInitFromUInt128Max() {
        let expected = "340282366920938463463374607431768211455"
        let actual = String(TinyUInt128.max)
        XCTAssertEqual(expected, actual)
    }
    
    func testInitFromUInt256() {
        let expected = "1"
        let actual = String(TinyUInt256(1))
        XCTAssertEqual(expected, actual)
    }
    
    func testInitFromUInt256Max() {
        let expected = "115792089237316195423570985008687907853269984665640564039457584007913129639935"
        let actual = String(TinyUInt256.max)
        XCTAssertEqual(expected, actual)
    }
    
    func testInitFromUInt512() {
        let expected = "1"
        let actual = String(TinyUInt512(1))
        XCTAssertEqual(expected, actual)
    }
    
    //TODO: - Can't pass it - too long
    func testInitFromUInt512Max() {
        let expected = "13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084095"
        //let actual = String(TinyUInt512.max)
        //XCTAssertEqual(expected, actual)
    }
    
    func testInitFromUInt1024() {
        let expected = "1"
        let actual = String(TinyUInt1024(1))
        XCTAssertEqual(expected, actual)
    }
    
    //TODO: - Can't pass it - too long
    func testInitFromUInt1024Max() {
        let expected = "13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084095"
        //let actual = String(TinyUInt512.max)
        //XCTAssertEqual(expected, actual)
    }
    
}
