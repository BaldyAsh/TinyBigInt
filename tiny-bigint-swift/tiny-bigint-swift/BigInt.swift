//
//  BigInt.swift
//  Tiny-BigInt-Swift
//
//  Created by Антон Григорьев on 13.07.2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import Foundation

private let maxL = 50

enum sign: Int {
    case plus = 1
    case minus = -1
}

protocol BigInt {
    
    var coef: Array<Int>? {get set}
    var sign: sign? {get set}
    var size: Int? {get set}
    func reverse()
    
    func bigInt()
    mutating func bigInt(_ num: String)
    mutating func bigInt(_ num: Int)
    func bigInt(_ num: Self)
    static func +(lhs: Self, rhs: Self)
    static func -(lhs: Self, rhs: Self)
    static func *(lhs: Self, rhs: Self)
    
}

class TinyBigInt: BigInt {
    
    public init(sign: sign? = nil,
                coef: Array<Int>? = nil,
                size: Int? = nil) {
        
        var coefN = Array<Int?>(repeating: nil, count: maxL)
        for i in 0...maxL-1 {
            coefN[i] = 0
        }
        
        self.coef = coefN as? Array<Int>
        self.sign = sign
        self.size = size
    }
    
    internal var coef: Array<Int>?
    
    internal var sign: sign?
    
    internal var size: Int?
    
    func reverse() {
    }
    
    func bigInt() {
    }
    
    public func bigInt(_ num: String) {
        let numb = num
        var count = numb.count
        
        //определяем знак
        if numb.first == "-" {
            count -= 1
            self.sign = .minus
        } else {
            self.sign = .plus
        }
        let firstSymb = self.sign! == .minus ? 1 : 0
        
        //заполняем массив в зависимости от знака
        for i in firstSymb...maxL-1 {
            
            let j = self.sign! == .minus ? i-1 : i
            let char = numb[numb.index(numb.startIndex, offsetBy: i)]
            if char >= "0" && char <= "9" {
                guard let intChar = Int(String(char)) else { return }
                self.coef![j] = intChar
            }
            
        }
        
        //проверка
        for i in coef! {
            print(i)
        }
        
    }
    
    
    public func bigInt(_ num: Int) {
        var i = 0
        var temp = TinyBigInt().coef
        var numb = num
        
        //определяем знак
        switch numb.signum() {
        case 1:
            self.sign = .plus
            numb *= (self.sign?.rawValue)!
        case -1:
            self.sign = .minus
            numb *= (self.sign?.rawValue)!
        default:
            break
        }
        
        //разбиение на разряды
        while (numb / 10 != 0) || (numb < 10) {
            if numb < 10 {
                temp![i] = Int(numb)
                break
            }
            temp![i] = Int(numb % 10)
            numb = (numb - numb % 10) / 10
            i += 1
        }
        
        //заполнение массива
        self.size = i + 1
        var j = i
        while j > 0 {
            self.coef![i-j] = temp![j]
            j -= 1
        }
        self.coef![i] = temp![0]
        
        //проверка
        for i in coef! {
            print(i)
        }
    }
    
    func bigInt(_ num: TinyBigInt) {
    }
    
    
    static func + (lhs: TinyBigInt, rhs: TinyBigInt) {
        
    }
    
    static func - (lhs: TinyBigInt, rhs: TinyBigInt) {
        
    }
    
    static func * (lhs: TinyBigInt, rhs: TinyBigInt) {
    }
    
    
    
}



