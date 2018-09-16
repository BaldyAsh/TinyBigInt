# TinyBigInt

[![Language](https://img.shields.io/badge/swift-4-orange.svg)](https://swift.org)
[![License](https://img.shields.io/badge/licence-MIT-orange.svg)](http://cocoapods.org/pods/TinyBigInt)
[![Platform](https://img.shields.io/cocoapods/p/BigInt.svg)](http://cocoapods.org/pods/TinyBigInt)

[![Build Status](https://travis-ci.org/attaswift/BigInt.svg?branch=master)](https://travis-ci.org/BaldyAsh/TinyBigInt)
[![Code Coverage](https://codecov.io/github/BaldyAsh/TinyBigInt/coverage.svg?branch=master)](https://codecov.io/github/BaldyAsh/TinyBigInt?branch=master)
[![Version](https://img.shields.io/cocoapods/v/TinyBigInt.svg)](http://cocoapods.org/pods/TinyBigInt)

## <a name="overview">Overview</a>
A Big Ints library written in pure Swift 4.

This project provides [integer types of arbitrary width][wiki] implemented in 100% pure Swift.

[wiki]: https://en.wikipedia.org/wiki/Arbitrary-precision_arithmetic

Now only one integer type is included - [`BigUInt`][BigUInt]. It is the Swift struct with copy-on-write value semantics, and it can be used much like any other integer type.

The library provides implementations for the most useful functions on big integers, including:

- All functionality of [`Comparable`][comparison] and [`Hashable`][hashing]

- [ALL arithmetic operators][addition]: `+`, `-`, `*`, `/`, `%`, `+=`, `-=`, `*=`, `/=`, `%=`

- [Bitwise operators][bitwise]: `~`, `|`, `&`, `^`, `|=`, `&=`, `^=`, plus the following read-only properties:
  - [`width`][width]: the minimum number of bits required to store the integer,
  - [`trailingZeroBitCount`][trailingZeroBitCount]: the number of trailing zero bits in the binary representation,
  - [`leadingZeroBitCount`][leadingZeroBitCount]: the number of leading zero bits (when the last digit isn't full),

- [Shift operators][shift]: `>>`, `<<`, `>>=`, `<<=`

- Radix conversion to/from [`String`s][radix1] and [big integers][radix2].

The library needs to be 100% unit test coveraged.

[radix1]: http://baldyash.github.io/TinyBigInt/Extensions/TinyBigInt.html#/s:FE6BigIntSScFTVS_7BigUInt5radixSi9uppercaseSb_SS
[radix2]: http://baldyash.github.io/TinyBigInt/Structs/TinyBigInt.html#/s:FV6BigInt7BigUIntcFTSS5radixSi_GSqS0__
[comparison]: http://baldyash.github.io/TinyBigInt/Structs/TinyBigInt.html#/Comparison
[BigUInt]: http://baldyash.github.io/TinyBigInt/Structs/TinyBigInt.html
