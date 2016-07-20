/**
 * Question Link: https://leetcode.com/problems/palindrome-number/
 * Primary idea: Negative numbers are not palindromes.
 *
 * Time Complexity: O(1), Space Complexity: O(1)
 */
 class Solution {
    func isPalindrome(x: Int) -> Bool {
        if x < 0 {
            return false
        }
        
        var chars: [Character] = [Character](String(x).characters)
        var b = 0
        var e = chars.count - 1
        
        while b < e {
            if chars[b] != chars[e] {
                return false
            }
            
            b += 1
            e -= 1
        }
        
        return true
    }
}