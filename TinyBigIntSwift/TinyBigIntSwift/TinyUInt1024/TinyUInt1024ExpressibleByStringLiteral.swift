//
//  TinyUInt512ExpressibleByStringLiteral.swift
//  tiny-bigint-swift
//
//  Created by Антон Григорьев on 04.08.2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

/*
 * - Extension for conforming ExpressibleByStringLiteral for add possibility to init UInt512 from string
 */
extension TinyUInt1024: ExpressibleByStringLiteral {
    
    internal static func valueFromString(_ storage: String) -> TinyUInt1024? {
        
        let radix = TinyUInt1024._determineRadixFromString(storage)
        let inputString = radix == 10 ?
            storage :
            String(storage.dropFirst(2))
        
        return TinyUInt1024(inputString, radix: radix)
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
        
        if let result = TinyUInt1024.valueFromString(storage) {
            self = result
        }
    }
    
}
