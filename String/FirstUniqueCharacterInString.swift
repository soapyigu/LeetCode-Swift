/**
 * Question Link: https://leetcode.com/problems/first-unique-character-in-a-string/
 * Primary idea: Keep track of existence of each character in the string
 * 
 * Note: The maximum space of the dictionary is 26, so space complexity is O(1)
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class FirstUniqueCharacterInString {
    func firstUniqChar(_ s: String) -> Int {
        var dict = [Character: Bool]()
        
        for char in s.characters {
            if let isDup = dict[char] {
                dict[char] = true
            } else {
                dict[char] = false
            }
        }
        
        for (i, char) in Array(s.characters).enumerated() {
            if !dict[char]! {
                return i
            }
        }
        
        return -1
    }
}