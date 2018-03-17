/**
 * Question Link: https://leetcode.com/problems/valid-palindrome-ii/
 * Primary idea: Take advantage of validPalindrome, and jump left and right separately to get correct character should be deleted
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class ValidPalindromeII {
    func validPalindrome(_ s: String) -> Bool {
        var i = 0, j = s.count - 1
        let sChars = Array(s)
        
        while i < j {
            if sChars[i] != sChars[j] {
                return isPalindrome(sChars, i + 1, j) || isPalindrome(sChars, i, j - 1)
            } else {
                i += 1
                j -= 1
            }
        }
        
        return true
    }
    
    fileprivate func isPalindrome(_ s: [Character], _ i: Int, _ j: Int) -> Bool {
        var i = i, j = j
        
        while i < j {
            if s[i] != s[j] {
                return false
            } else {
                i += 1
                j -= 1
            }
        }
        
        return true
    }
}