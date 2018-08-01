//
//  TinyUInt128ExpressibleByStringLiteral.swift
//  tiny-bigint-swift
//
//  Created by Антон Григорьев on 30.07.2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

/*
 * - Extension for conforming ExpressibleByStringLiteral for add possibility to init UInt128 from string
 */
extension TinyUInt128: ExpressibleByStringLiteral {
    
    internal static func valueFromString(_ storage: String) -> TinyUInt128? {
        
        let radix = TinyUInt128._determineRadixFromString(storage)
        let inputString = radix == 10 ? storage : String(storage.dropFirst(2))
        
        if inputString.count > 128 {
            return nil
        }
        
        var secondHalfSting: String? = nil
        var firstHalfString: String? = nil
        if inputString.count > 64 {
            firstHalfString = String(inputString.prefix(inputString.count-64))
            secondHalfSting = String(inputString.suffix(64))
        }
        
        let firstHalf = firstHalfString == nil ? UInt64(0) : UInt64(firstHalfString!)
        let secondHalf = secondHalfSting == nil ? UInt64(inputString) : UInt64(secondHalfSting!)
        
        let result = TinyUInt128(firstHalf: firstHalf!, secondHalf: secondHalf!)
        
        return result
    }
    
    internal static func _determineRadixFromString(_ string: String) -> Int {
        
        switch string.prefix(2) {
        case "0b":
            return 2
        case "0o":
            return 8
        case "0x":
            return 16
        default:
            return 10
        }
    }
    
    // MARK: Initializer
    public init(stringLiteral storage: StringLiteralType) {
        self.init()
        
        if let result = TinyUInt128.valueFromString(storage) {
            self = result
        }
    }
    
}
