/**
 * Question Link: https://leetcode.com/problems/add-strings/
 * Primary idea: reverse two strings and add them using sum && carry idea
 * 
 * Note: do not forget to reverse afterwards
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class AddStrings {
    func addStrings(_ num1: String, _ num2: String) -> String {
        let num1Chars = Array(num1.characters.reversed())
        let num2Chars = Array(num2.characters.reversed())
        var i = 0, j = 0, sum = 0, carry = 0
        var res = ""
        
        while i < num1Chars.count || j < num2Chars.count || carry != 0 {
            sum = carry
            
            if i < num1Chars.count {
                sum += Int(String(num1Chars[i]))!
                i += 1
            }
            if j < num2Chars.count {
                sum += Int(String(num2Chars[j]))!
                j += 1
            }
            
            carry = sum / 10
            sum = sum % 10
            
            res.append(String(sum))
        }
        
        return String(res.characters.reversed())
    }
}