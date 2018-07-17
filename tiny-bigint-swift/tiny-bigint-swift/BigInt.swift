//
//  BigInt.swift
//  Tiny-BigInt-Swift
//
//  Created by Антон Григорьев on 13.07.2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//


//////////////////////// Its all useless actually I think
//import Foundation

//private let maxL = 256
//
//enum sign: Int {
//    case plus = 1
//    case minus = -1
//}
//
//protocol BigInt {
//
//    var coef: Array<Int>? {get}
//    var sign: sign? {get}
//    var size: Int? {get}
//    func reverse()
//
//    func bigInt()
//    mutating func bigInt(_ num: String, decimals: Int)
//    mutating func bigInt(_ num: Int, decimals: Int)
//    func bigInt(_ num: Self)
//    static func +(lhs: Self, rhs: Self)
//    static func -(lhs: Self, rhs: Self)
//    static func *(lhs: Self, rhs: Self)
//
//}
//
//struct TinyBigInt: BigInt {
//
//    public init(sign: sign? = nil,
//                coef: Array<Int>? = nil,
//                size: Int? = nil) {
//
//        var coefN = Array<Int?>(repeating: nil, count: maxL)
//        for i in 0...maxL-1 {
//            coefN[i] = 0
//        }
//
//        self.coef = coefN as? Array<Int>
//        self.sign = sign
//        self.size = size
//    }
//
//    public var coef: Array<Int>?
//
//    public var sign: sign?
//
//    public var size: Int?
//
//    func reverse() {
//    }
//
//    func bigInt() {
//    }
Array.init(repeating: <#T##_#>, count: <#T##Int#>)
//
//    public mutating func bigInt(_ num: String, decimals: Int = 10) {
//        var coefN = Array<Int?>(repeating: nil, count: maxL)
//        for i in 0...maxL-1 {
//            coefN[i] = 0
//        }
//
//        self.coef = coefN as? Array<Int>
//        let numb = num
//        var count = numb.count
//
//        //sign
//        if numb.first == "-" {
//            count -= 1
//            self.sign = .minus
//        } else {
//            self.sign = .plus
//        }
//        let firstSymb = self.sign! == .minus ? 1 : 0
//
//        //fill array
//        for i in firstSymb...numb.count-1 {
//
//            let j = self.sign! == .minus ? i-1 : i
//            let index = numb.index(numb.startIndex, offsetBy: i)
//            let char = numb[index]
//            if char >= "0" && char <= "9" {
//                guard let intChar = Int(String(char)) else { return }
//                self.coef![j] = intChar
//            }
//
//        }
//
//        //check
//        for i in coef! {
//            print(i)
//        }
//
//    }
//
//
//    public mutating func bigInt(_ num: Int, decimals: Int = 10) {
//        var coefN = Array<Int?>(repeating: nil, count: maxL)
//        for i in 0...maxL-1 {
//            coefN[i] = 0
//        }
//
//        self.coef = coefN as? Array<Int>
//        var i = 0
//        var temp = TinyBigInt().coef
//        var numb = num
//
//        //sign
//        switch numb.signum() {
//        case 1:
//            self.sign = .plus
//            numb *= (self.sign?.rawValue)!
//        case -1:
//            self.sign = .minus
//            numb *= (self.sign?.rawValue)!
//        default:
//            break
//        }
//
//        //divide
//        while (numb / 10 != 0) || (numb < 10) {
//            if numb < 10 {
//                temp![i] = Int(numb)
//                break
//            }
//            temp![i] = Int(numb % 10)
//            numb = (numb - numb % 10) / 10
//            i += 1
//        }
//
//        //fill array
//        self.size = i + 1
//        var j = i
//        while j > 0 {
//            self.coef![i-j] = temp![j]
//            j -= 1
//        }
//        self.coef![i] = temp![0]
//
//        //check
//        for i in coef! {
//            print(i)
//        }
//    }
//
//    func bigInt(_ num: TinyBigInt) {
//    }
//
//
//    static func + (lhs: TinyBigInt, rhs: TinyBigInt) {
//
//    }
//
//    static func - (lhs: TinyBigInt, rhs: TinyBigInt) {
//
//    }
//
//    static func * (lhs: TinyBigInt, rhs: TinyBigInt) {
//    }
//
//
//
//}



