//
//  BigUInt128Custom.swift
//  tiny-bigint-swift
//
//  Created by Георгий Фесенко on 13/07/2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//


///////////////////// 3 uint32? we should discuss it later. see TinyUint128 file
//import Foundation

//public struct BigUInt128Custom {
//
//    var internalStorage: (UInt32, UInt32, UInt32)
//
//    //Just for testing purposes. Should be change to smth else.
//    init(numbers: (UInt32, UInt32, UInt32)) {
//        internalStorage = numbers
//    }
//
//    //Default value
//    init() {
//        internalStorage = (0, 0, 0)
//    }
//
//    private static let base: UInt64 = UInt64(UInt32.max) + 1
//
//
//    static func +(_ lhs: BigUInt128Custom, _ rhs: BigUInt128Custom) -> BigUInt128Custom {
//
//        var result: (UInt32, UInt32, UInt32) = (0, 0, 0)
//
//        //Calculations
//        result.2 = UInt32((UInt64(lhs.internalStorage.2) + UInt64(rhs.internalStorage.2)) % base)
//        result.1 += UInt32((UInt64(lhs.internalStorage.2) + UInt64(rhs.internalStorage.2)) / base)
//        result.1 += UInt32((UInt64(lhs.internalStorage.1) + UInt64(rhs.internalStorage.1)) % base)
//        result.0 += UInt32((UInt64(lhs.internalStorage.1) + UInt64(rhs.internalStorage.1)) / base)
//        result.0 += UInt32((UInt64(lhs.internalStorage.0) + UInt64(rhs.internalStorage.0)) % base)
//
//        return BigUInt128Custom(numbers: result)
//    }
//
//    //Just a convenience function to fill the arrays with numbers
//    private static func putNumbersIntoArray(array: inout [UInt32], number: UInt32) {
//        var number = number
//        var i = array.count - 1
//        while number > 0 {
//            let l = number % 10
//            number = number / 10
//            array[i] = l
//            i -= 1
//        }
//    }
//
//}
//
//extension BigUInt128Custom: Equatable {
//    public static func ==(_ lhs: BigUInt128Custom, _ rhs: BigUInt128Custom) -> Bool {
//        return lhs.internalStorage.0 == rhs.internalStorage.0 &&
//            lhs.internalStorage.1 == rhs.internalStorage.1 &&
//            lhs.internalStorage.2 == rhs.internalStorage.2
//    }
//}

