/**
 * Question Link: https://leetcode.com/problems/valid-anagram/
 * Primary idea: Compare two strings' characters' frequency
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class ValidAnagram {
    func isAnagram(s: String, _ t: String) -> Bool {
        let sCharsFreq = Dictionary(s.map { ($0, 1) }, uniquingKeysWith: +)
        let tCharsFreq = Dictionary(t.map { ($0, 1) }, uniquingKeysWith: +)
        
        return sCharsFreq == tCharsFreq
    }   
}