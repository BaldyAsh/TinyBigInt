//
//  BigIntTests.swift
//  tiny-bigint-swiftTests
//
//  Created by Антон Григорьев on 13.07.2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import XCTest
@testable import tiny_bigint_swift

class BigIntTests: XCTestCase {
    
    func testInit() {
        var a = TinyBigInt()
        let numb1 = a.bigInt(214124)
        let numb2 = a.bigInt("21412412451351353999999999999")
        let numb3 = a.bigInt(10, decimals: 2)
    }
    
}
