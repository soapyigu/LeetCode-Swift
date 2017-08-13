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
        guard s.characters.count != 0 else {
            return 0
        }
        
        var set = Set<Character>()
        var maxLen = 0
        var startIndex = 0
        var chars = [Character](s.characters)
        
        for i in 0..<chars.count {
            var current = chars[i]
            
            if set.contains(current) {
                maxLen = max(maxLen, i - startIndex)
                while chars[startIndex] != current {
                    set.remove(chars[startIndex])
                    startIndex += 1
                }
                startIndex += 1
            } else {
                set.insert(current)
            }
        }
        
        maxLen = max(maxLen, chars.count - startIndex)
        
        return maxLen
    }
}