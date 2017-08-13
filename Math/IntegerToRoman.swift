/**
 * Question Link: https://leetcode.com/problems/integer-to-roman/
 * Primary idea: Add symbols from big to small, minus relative number as well
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

 class IntegerToRoman {
    func intToRoman(_ num: Int) -> String {
        guard num > 0 else {
            return ""
        }
        
        let nums = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        let symbols = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
        var res = ""
        var digit = 0
        var number = num
        
        while number > 0 {
            let current = number / nums[digit]
            
            for _ in 0..<current {
                res += symbols[digit]
            }
            
            number -= current * nums[digit]
            digit += 1
        }
        
        return res
    }
}

// Alternate solution
class IntegerToRomanWithDictionaries {
    func intToRoman(_ num: Int) -> String {
        guard num > 0 else { return "" }
        
        let thousands = ["", "M", "MM", "MMM"]
        let hundreds = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
        let tens = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
        let ones = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
        
        return thousands[num / 1000] + hundreds[num % 1000 / 100] + tens[num % 100 / 10] + ones[num % 10]
    }
}
