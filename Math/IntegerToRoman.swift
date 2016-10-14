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
            
            for _ in 0 ..< current {
                res += symbols[digit]
            }
            
            number -= current * nums[digit]
            digit += 1
        }
        
        return res
    }
}