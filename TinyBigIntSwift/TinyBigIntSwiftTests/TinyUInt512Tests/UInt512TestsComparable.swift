//
//  UInt512TestsComparable.swift
//  TinyBigIntSwiftTests
//
//  Created by Антон Григорьев on 25.08.2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import TinyBigIntSwift

class UInt512TestsComparable: XCTestCase {
    
    func testComparable1() {
        let first = TinyUInt512(firstHalf: 1, secondHalf: TinyUInt256.max)
        let second = TinyUInt512(firstHalf: 1, secondHalf: 2)
        let result = second < first
        XCTAssertTrue(result)
    }
    
    func testComparable2() {
        let first = TinyUInt512(firstHalf: 1, secondHalf: TinyUInt256.max)
        let second = TinyUInt512(firstHalf: 1, secondHalf: 2)
        let result = first < second
        XCTAssertFalse(result)
    }
    
    func testComparable3() {
        let first = TinyUInt512(firstHalf: 1, secondHalf: TinyUInt256.max)
        let second = TinyUInt512(firstHalf: 1, secondHalf: 2)
        let result = second > first
        XCTAssertFalse(result)
    }
    
    func testComparable4() {
        let first = TinyUInt512(firstHalf: 1, secondHalf: TinyUInt256.max)
        let second = TinyUInt512(firstHalf: 1, secondHalf: 2)
        let result = first > second
        XCTAssertTrue(result)
    }
    
    func testComparable5() {
        let first = TinyUInt512(firstHalf: 1, secondHalf: TinyUInt256.max)
        let second = TinyUInt512(firstHalf: 1, secondHalf: 2)
        let result = first <= second
        XCTAssertFalse(result)
    }
    
    func testComparable6() {
        let first = TinyUInt512(firstHalf: 1, secondHalf: TinyUInt256.max)
        let second = TinyUInt512(firstHalf: 1, secondHalf: 2)
        let result = first >= second
        XCTAssertTrue(result)
    }
    
}
