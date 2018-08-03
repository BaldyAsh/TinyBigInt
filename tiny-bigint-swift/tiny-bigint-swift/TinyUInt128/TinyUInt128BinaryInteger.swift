//
//  TinyUInt128BinaryInteger.swift
//  tiny-bigint-swift
//
//  Created by Антон Григорьев on 28.07.2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

extension TinyUInt128 {
    public static var bitWidth: Int {
        return 128
    }
}

/*
 * - Extension for conforming BinaryInteger and use / /= % %= for it
 */
extension TinyUInt128: BinaryInteger {
    
    public var words: [UInt] {
        return Array(storage.secondHalf.words) + Array(storage.firstHalf.words)
    }
    
    public var trailingZeroBitCount: Int {
        if storage.secondHalf == 0 {
            return UInt64.bitWidth + storage.firstHalf.trailingZeroBitCount
        }
        return storage.secondHalf.trailingZeroBitCount
    }
    
    // MARK: Methods
    public static func /(lhs: TinyUInt128, rhs: TinyUInt128) -> TinyUInt128 {
        let result = lhs.dividedReportingOverflow(by: rhs)
        
        return result.partialValue
    }
    
    public static func /=(lhs: inout TinyUInt128, rhs: TinyUInt128) {
        lhs = lhs / rhs
    }
    
    public static func %(lhs: TinyUInt128, rhs: TinyUInt128) -> TinyUInt128 {
        let result = lhs.remainderReportingOverflow(dividingBy: rhs)
        
        return result.partialValue
    }
    
    public static func %=(lhs: inout TinyUInt128, rhs: TinyUInt128) {
        lhs = lhs % rhs
    }
    
    
    // Masked right shift operation. 128 -> 0, 129 -> 1
    public static func &>>=(lhs: inout TinyUInt128, rhs: TinyUInt128) {
        
        let shift = rhs.storage.secondHalf & 127
        
        switch shift {
        case 0:
            return
        case 1...63:
            let firstHalf = lhs.storage.firstHalf >> shift
            let secondHalf = (lhs.storage.secondHalf >> shift) + (lhs.storage.firstHalf << (64 - shift))
            lhs = TinyUInt128(firstHalf: firstHalf, secondHalf: secondHalf)
        case 64:
            // Move first bits to second
            lhs = TinyUInt128(firstHalf: 0, secondHalf: lhs.storage.firstHalf)
        default:
            let secondHalf = lhs.storage.firstHalf >> (shift - 64)
            lhs = TinyUInt128(firstHalf: 0, secondHalf: secondHalf)
        }
    }
    
    /// Masked left shift operation. 128 -> 0, 129 -> 1
    public static func &<<=(lhs: inout TinyUInt128, rhs: TinyUInt128) {
        
        let shift = rhs.storage.secondHalf & 127
        
        switch shift {
        case 0:
            return // Do nothing shift
        case 1...63:
            let firstHalf = (lhs.storage.firstHalf << shift) + (lhs.storage.secondHalf >> (64 - shift))
            let secondHalf = lhs.storage.secondHalf << shift
            lhs = TinyUInt128(firstHalf: firstHalf, secondHalf: secondHalf)
        case 64:
            // Move second bits to first
            lhs = TinyUInt128(firstHalf: lhs.storage.secondHalf, secondHalf: 0)
        default:
            let firstHalf = lhs.storage.secondHalf << (shift - 64)
            lhs = TinyUInt128(firstHalf: firstHalf, secondHalf: 0)
        }
    }
}
