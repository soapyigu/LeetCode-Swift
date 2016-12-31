/**
 * Question Link: https://leetcode.com/problems/integer-to-english-words/
 * Primary idea: Divide and mod 1000, 100, and 10 to get string for each digit
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class IntegerEnglishWords {
    func numberToWords(_ num: Int) -> String {
        let l1 = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
        let l2 = ["Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
        let l3 = "Hundred"
        let l4 = ["Thousand", "Million", "Billion"]
        var res = "", num = num, digit = -1
        
        if num == 0 {
            return "Zero"
        }
        
        while num > 0 {
            var temp = "", token = num % 1000
            
            if token > 99 {
                temp += "\(l1[token / 100]) \(l3) "
                token %= 100
            }
            
            if token > 19 {
                temp += "\(l2[token / 10 - 2]) "
                token %= 10
            }
            
            if token > 0 {
                temp += "\(l1[token]) "
            }
            
            if digit != -1 && temp != "" {
                res = temp + l4[digit] + " " + res
            } else {
                res = temp + res
            }
            digit += 1
            num /= 1000
        }
        
        return String(res.characters.dropLast())
    }
}