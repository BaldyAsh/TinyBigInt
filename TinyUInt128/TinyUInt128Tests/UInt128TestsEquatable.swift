//
//  UInt128TestsEquatable.swift
//  tiny-bigint-swiftTests
//
//  Created by Антон Григорьев on 01.08.2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import TinyUInt128

class UInt128TestsEquatable: XCTestCase {
    
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
