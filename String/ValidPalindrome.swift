/**
 * Question Link: https://leetcode.com/problems/valid-palindrome/
 * Primary idea: For every index in the first half of the String, compare two values at mirroring indices.
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class ValidPalindrome {
    func isPalindrome(_ s: String) -> Bool {
        var i = 0, j = s.count - 1
        let sChars = Array(s.lowercased())
        
        while i < j {
            while !sChars[i].isAlphanumeric && i < j {
                i += 1
            }
            
            while !sChars[j].isAlphanumeric && i < j {
                j -= 1
            }
            
            if sChars[i] != sChars[j] {
                return false
            } else {
                i += 1
                j -= 1
            }
        }
        
        return true
    }
}

extension Character {
    var isValid: Bool {
        return isLetter || isNumber
    }
}