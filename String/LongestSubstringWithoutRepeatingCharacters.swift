/**
 * Question Link: https://leetcode.com/problems/longest-substring-without-repeating-characters/
 * Primary idea: Use a set to hold characters and then iterate the string, 
 *               update maxLen, set, startIdx encountering duplicates
 * 
 * Note: Swift does not have a way to access a character in a string with O(1), 
 *       thus we have to first transfer the string to a character array
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class LongestSubstringWithoutRepeatingCharacters {
    func lengthOfLongestSubstring(s: String) -> Int {
        var left = 0, right = 0, substring = Set<Character>(), longest = 0
        let sChars = Array(s)
        
        while right < sChars.count {
            let currentChar = sChars[right]
            
            if substring.contains(currentChar) {
                longest = max(longest, right - left)
                substring.remove(sChars[left])
                left += 1
            } else {
                substring.insert(currentChar)
                right += 1
                
                if right == sChars.count {
                    longest = max(longest, right - left)
                }
            }
        }
        
        return longest
    }
}