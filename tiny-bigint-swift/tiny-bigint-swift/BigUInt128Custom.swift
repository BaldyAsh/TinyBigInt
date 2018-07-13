//
//  BigUInt128Custom.swift
//  tiny-bigint-swift
//
//  Created by Георгий Фесенко on 13/07/2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import Foundation

public struct BigUInt128Custom {
    
    var numberss: (UInt32, UInt32, UInt32)
    
    //Just for testing purposes. Should be change to smth else.
    init(numbers: (UInt32, UInt32, UInt32)) {
        numberss = numbers
    }
    
    //Default value
    init() {
        numberss = (0, 0, 0)
    }
    
    
    static func +(_ lhs: BigUInt128Custom, _ rhs: BigUInt128Custom) -> BigUInt128Custom {
        
        var leftZero = [UInt32](repeating: 0, count: 10)
        var leftFirst = [UInt32](repeating: 0, count: 10)
        var leftSecond = [UInt32](repeating: 0, count: 10)
        
        putNumbersIntoArray(array: &leftZero, number: lhs.numberss.0)
        putNumbersIntoArray(array: &leftFirst, number: lhs.numberss.1)
        putNumbersIntoArray(array: &leftSecond, number: lhs.numberss.2)
        
        var rightZero = [UInt32](repeating: 0, count: 10)
        var rightFirst = [UInt32](repeating: 0, count: 10)
        var rightSecond = [UInt32](repeating: 0, count: 10)
        putNumbersIntoArray(array: &rightZero, number: rhs.numberss.0)
        putNumbersIntoArray(array: &rightFirst, number: rhs.numberss.1)
        putNumbersIntoArray(array: &rightSecond, number: rhs.numberss.2)
        
        //Here is the add functions happens....probably
        var firstResult = [UInt32](repeating: 0, count: 10)
        var secondResult = [UInt32](repeating: 0, count: 10)
        var thirdResult = [UInt32](repeating: 0, count: 10)
        for i in 0..<max(leftZero.count, rightZero.count) {
            
            
        }
        return BigUInt128Custom(numbers: (1,1,1))
    }
    
    //Just a convenience function to fill the arrays with numbers
    private static func putNumbersIntoArray(array: inout [UInt32], number: UInt32) {
        var number = number
        var i = array.count - 1
        while number > 0 {
            let l = number % 10
            number = number / 10
            array[i] = l
            i -= 1
        }
    }
    
}

