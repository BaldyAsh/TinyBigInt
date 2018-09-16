//
//  UInt1024TestsComparable.swift
//  TinyBigIntSwiftTests
//
//  Created by Anton Grigorev on 16/09/2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import TinyBigIntSwift

class UInt1024TestsComparable: XCTestCase {
    
    func testComparable1() {
        let first = TinyUInt1024(firstHalf: 1, secondHalf: TinyUInt512.max)
        let second = TinyUInt1024(firstHalf: 1, secondHalf: 2)
        let result = second < first
        XCTAssertTrue(result)
    }
    
    func testComparable2() {
        let first = TinyUInt1024(firstHalf: 1, secondHalf: TinyUInt512.max)
        let second = TinyUInt1024(firstHalf: 1, secondHalf: 2)
        let result = first < second
        XCTAssertFalse(result)
    }
    
    func testComparable3() {
        let first = TinyUInt1024(firstHalf: 1, secondHalf: TinyUInt512.max)
        let second = TinyUInt1024(firstHalf: 1, secondHalf: 2)
        let result = second > first
        XCTAssertFalse(result)
    }
    
    func testComparable4() {
        let first = TinyUInt1024(firstHalf: 1, secondHalf: TinyUInt512.max)
        let second = TinyUInt1024(firstHalf: 1, secondHalf: 2)
        let result = first > second
        XCTAssertTrue(result)
    }
    
    func testComparable5() {
        let first = TinyUInt1024(firstHalf: 1, secondHalf: TinyUInt512.max)
        let second = TinyUInt1024(firstHalf: 1, secondHalf: 2)
        let result = first <= second
        XCTAssertFalse(result)
    }
    
    func testComparable6() {
        let first = TinyUInt1024(firstHalf: 1, secondHalf: TinyUInt512.max)
        let second = TinyUInt1024(firstHalf: 1, secondHalf: 2)
        let result = first >= second
        XCTAssertTrue(result)
    }
    
}
