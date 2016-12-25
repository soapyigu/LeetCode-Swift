/**
 * Question Link: https://leetcode.com/problems/palindrome-permutation/
 * Primary idea: Use a dictionary to track each character's frequency
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class PalindromePermutation {
    func canPermutePalindrome(s: String) -> Bool {
        let sChars = [Character](s.characters)
        var oddNum = 0
        var charFrequency = [Character: Int]()
        
        for char in sChars {
            if charFrequency[char] != nil {
                charFrequency[char]! += 1
            } else {
                charFrequency[char] = 1
            }
        }
        
        for char in charFrequency.keys {
            let fre = charFrequency[char]!
            if fre % 2 == 1 {
                oddNum += 1
            }
            if oddNum >= 2 {
                return false
            }
        }
        
        return true
    }
}