# TinyBigInt

[![Language](https://img.shields.io/badge/swift-4-orange.svg)](https://swift.org)
[![License](https://img.shields.io/badge/licence-MIT-orange.svg)](http://cocoapods.org/pods/TinyBigInt)
[![Platform](https://img.shields.io/cocoapods/p/TinyBigInt.svg)](http://cocoapods.org/pods/TinyBigInt)

[![Build Status](https://travis-ci.org/matterinc/TinyBigInt.svg?branch=master)](https://travis-ci.org/matterinc/TinyBigInt)
[![Code Coverage](https://codecov.io/github/matterinc/TinyBigInt/coverage.svg?branch=master)](https://codecov.io/github/matterinc/TinyBigInt?branch=master)
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

## <a name="license">License</a>

TinyBigInt can be used, distributed and modified under [the MIT license][license].

## <a name="integration">Requirements and Integration</a>

TinyBigInt 3.0.0 requires Swift 4.

BigInt deploys to macOS 10.10, iOS 9, watchOS 2 and tvOS 9.

Setup instructions:

- **Swift Package Manager:**
  Although the Package Manager is still in its infancy, BigInt provides experimental support for it.
  Add this to the dependency section of your `Package.swift` manifest:

    ```Swift
    .Package(url: "https://github.com/matterinc/TinyBigInt.git", from: "1.0.0")
    ```

- **CocoaPods:** Put this in your `Podfile`:

    ```Ruby
    pod 'TinyBigInt', '~> 1.0'
    ```

[license]: https://github.com/matterinc/TinyBigInt/blob/master/LICENSE.md
[BigUInt]: http://matterinc.github.io/TinyBigInt/Structs/TinyBigUInt.html
[BigInt]: http://matterinc.github.io/TinyBigInt/Structs/TinyBigInt.html
[comparison]: http://matterinc.github.io/TinyBigInt/Structs/TinyBigUInt.html#/Comparison
[hashing]: http://matterinc.github.io/TinyBigInt/Structs/TinyBigUInt.html#/Hashing
[addition]: http://matterinc.github.io/TinyBigInt/Structs/TinyBigUInt.html#/Addition
[subtraction]: http://matterinc.github.io/TinyBigInt/Structs/TinyBigUInt.html#/Subtraction
[mul]: http://matterinc.github.io/TinyBigInt/Structs/TinyBigUInt.html#/s:ZFV6BigInt7BigUIntoi1mFTS0_S0__S0_
[multiplication]: http://matterinc.github.io/TinyBigInt/Structs/TinyBigUInt.html#/Multiplication
[division]: http://matterinc.github.io/TinyBigInt/Structs/TinyBigUInt.html#/Division
[divide]: http://matterinc.github.io/TinyBigInt/Structs/TinyBigUInt.html#/s:FV6BigInt7BigUInt7dividedFT2byS0__T8quotientS0_9remainderS0__
[bitwise]: http://matterinc.github.io/TinyBigInt/Structs/TinyBigUInt.html#/Bitwise%20Operations
[width]: http://matterinc.github.io/TinyBigInt/Structs/TinyBigUInt.html#/s:vV6BigInt7BigUInt5widthSi
[leadingZeroBitCount]: http://matterinc.github.io/TinyBigInt/Structs/TinyBigUInt.html#/s:vV6BigInt7BigUInt13leadingZeroBitCountSi
[trailingZeroBitCount]: http://matterinc.github.io/TinyBigInt/Structs/TinyBigUInt.html#/s:vV6BigInt7BigUInt14trailingZeroBitCountSi
[shift]: http://matterinc.github.io/TinyBigInt/Structs/TinyBigUInt.html#/Shift%20Operators
[radix1]: http://matterinc.github.io/TinyBigInt/Extensions/String.html#/s:FE6BigIntSScFTVS_7BigUInt5radixSi9uppercaseSb_SS
[radix2]: http://matterinc.github.io/TinyBigInt/Structs/TinyBigUInt.html#/s:FV6BigInt7BigUIntcFTSS5radixSi_GSqS0__
