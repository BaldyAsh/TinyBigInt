//
//  UInt256TestsEquatable.swift
//  TinyBigIntSwiftTests
//
//  Created by Антон Григорьев on 25.08.2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import TinyBigIntSwift

class UInt256TestsEquatable: XCTestCase {
    
    func testEquatable1() {
        let first = TinyUInt256(firstHalf: 1, secondHalf: 2)
        let second = TinyUInt256(firstHalf: 1, secondHalf: 2)
        let result = first == second
        XCTAssertTrue(result)
    }
    
    func testEquatable2() {
        let first = TinyUInt256(firstHalf: 1, secondHalf: 2)
        let second = TinyUInt256(firstHalf: 1, secondHalf: 3)
        let result = first == second
        XCTAssertFalse(result)
    }
    
}
