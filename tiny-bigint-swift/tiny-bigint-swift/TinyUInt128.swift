//
//  TinyUInt128.swift
//  tiny-bigint-swift
//
//  Created by Антон Григорьев on 17.07.2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import Foundation

public struct TinyUInt128 {
    
    // We represent value in 2 64-bit UInt64
    internal var storage: (firstHalf: UInt64, secondHalf: UInt64)
    
    // MARK: Initializers
    
    public init () {
        self.init(firstHalf: 0, secondHalf: 0)
    }
    
    public init (firstHalf: UInt64, secondHalf: UInt64) {
        storage.firstHalf = firstHalf
        storage.secondHalf = secondHalf
    }
    
    public init (_ value: TinyUInt128) {
        self.init(firstHalf: value.storage.firstHalf, secondHalf: value.storage.secondHalf)
    }
    
    public init(_ value: Int) {
        self.init(firstHalf: 0, secondHalf: UInt64(value))
    }
    
//    public init (_ value: String) {
//        let number = TinyUInt128.fromString(value)
//        self = number
//    }
    
    // MARK: Instance Methods
    
    public func addingReportingOverflow(_ rhs: TinyUInt128) -> (partialValue: TinyUInt128, overflow: Bool) {
        let (secondHalf, secondOverflow) = self.storage.secondHalf.addingReportingOverflow(rhs.storage.secondHalf)
        var (firstHalf, firstOverflow) = self.storage.firstHalf.addingReportingOverflow(rhs.storage.firstHalf)
        
        var resultOverflow = false
        if secondOverflow {
            (firstHalf, resultOverflow) = firstHalf.addingReportingOverflow(1)
        }
        
        return (partialValue: TinyUInt128(firstHalf: firstHalf, secondHalf: secondHalf),
                overflow: firstOverflow || resultOverflow)
    }
    
    
    
}

// MARK: Working with strings

extension TinyUInt128 {
    
//    internal func fromString(_ value: String) -> TinyUInt128 {
//        let radix = TinyUInt128.determineRadix(value)
//        let input = radix == 10 ? value : String(value.dropFirst(2))
//
//        return TinyUInt128(input, radix: radix)
//    }
    
    internal static func determineRadix(_ string: String) -> Int {
        switch string.prefix(2) {
        case "0b": return 2
        case "0o": return 8
        case "0x": return 16
        default: return 10
        }
    }
}

// MARK: - Numeric

extension TinyUInt128 {
    
    public static func +(lhs: TinyUInt128, rhs: TinyUInt128) -> TinyUInt128 {
        let result = lhs.addingReportingOverflow(rhs)
        return result.partialValue
    }
    public static func +=(lhs: inout TinyUInt128, rhs: TinyUInt128) {
        lhs = lhs + rhs
    }
}

// MARK: - Comparable

extension TinyUInt128 : Comparable {
    public static func <(lhs: TinyUInt128, rhs: TinyUInt128) -> Bool {
        if lhs.storage.firstHalf < rhs.storage.secondHalf {
            return true
        } else if lhs.storage.firstHalf == rhs.storage.firstHalf && lhs.storage.secondHalf < rhs.storage.secondHalf {
            return true
        }
        return false
    }
}

// MARK: - Equatable

extension TinyUInt128 : Equatable {
    public static func ==(lhs: TinyUInt128, rhs: TinyUInt128) -> Bool {
        if lhs.storage.secondHalf == rhs.storage.secondHalf && lhs.storage.firstHalf == rhs.storage.firstHalf {
            return true
        }
        return false
    }
}


