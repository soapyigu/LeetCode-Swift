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
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var longest = 0, left = 0, set = Set<Character>()
        let sChars = Array(s)
        
        for (i, char) in sChars.enumerated() {
            if set.contains(char) {
                
                longest = max(longest, i - left)
                
                while sChars[left] != char {
                    set.remove(sChars[left])
                    left += 1
                }
                left += 1

            } else {
                set.insert(char)
            }
        }
        
        return max(longest, sChars.count - left)
    }
}