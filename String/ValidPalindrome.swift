/**
 * Question Link: https://leetcode.com/problems/valid-palindrome/
 * Primary idea: Two Pointers, compare left and right until they meet
 * 
 * Note: ask interviewer if digit matters
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class ValidPalindrome {
    func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s.lowercased().characters)
  
        var left = 0
        var right = chars.count - 1
  
        while left < right {
            while left < right && !isAlpha(chars[left]) {
                left += 1
            }
            while left < right && !isAlpha(chars[right]) {
                right -= 1
            }
    
            if chars[left] != chars[right] {
                return false
            } else {
                left += 1
                right -= 1
            }
        }
  
        return true
    }

    private func isAlpha(_ char: Character) -> Bool {
        guard let char = String(char).unicodeScalars.first else {
            fatalError("Character is invalid")
        }
  
        return CharacterSet.alphanumerics.contains(char)
    }
}