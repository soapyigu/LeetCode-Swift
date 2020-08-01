//
//  StringtoInteger.swift
//  LeetCode
//
//  Created by 김혜리 on 2020/08/01.
//  Copyright © 2020 hyerikim. All rights reserved.
//

import Foundation

/// Question Link: https://leetcode.com/problems/string-to-integer-atoi/
/// 8. String to Integer
/// Only the space character ' ' is considered as whitespace character.
/// Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. If the numerical value is out of the range of representable values, INT_MAX (231 − 1) or INT_MIN (−231) is returned.

func myAtoi(_ str: String) -> Int {
    let string = str.trimmingCharacters(in: .whitespaces)
    var realStr = ""

    for i in string {
        if let _ = Int(String(i)) {
            realStr.append(i)
        } else if realStr.count == 0, i == "-" || i == "+" {
            realStr.append(i)
        } else {
            if realStr.count == 0 {
                return 0
            }
            break
        }
    }
    
    if let value = Int32(realStr) {
        return Int(value)
    } else {
        let result = realStr.filter("0123456789".contains)
        
        if result.count == 0 {
            return 0
        }
        
        if realStr.hasPrefix("-") {
            return Int(Int32.min)
        } else {
            return Int(Int32.max)
        }
    }
}
