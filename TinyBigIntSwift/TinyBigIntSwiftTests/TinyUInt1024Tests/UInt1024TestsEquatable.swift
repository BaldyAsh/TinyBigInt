//
//  UInt1024TestsEquatable.swift
//  TinyBigIntSwiftTests
//
//  Created by Anton Grigorev on 16/09/2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import TinyBigIntSwift

class UInt1024TestsEquatable: XCTestCase {
    
    func testEquatable1() {
        let first = TinyUInt1024(firstHalf: 1, secondHalf: 2)
        let second = TinyUInt1024(firstHalf: 1, secondHalf: 2)
        let result = first == second
        XCTAssertTrue(result)
    }
    
    func testEquatable2() {
        let first = TinyUInt1024(firstHalf: 1, secondHalf: 2)
        let second = TinyUInt1024(firstHalf: 1, secondHalf: 3)
        let result = first == second
        XCTAssertFalse(result)
    }
    
}
