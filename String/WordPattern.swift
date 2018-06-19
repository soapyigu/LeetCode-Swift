/**
 * Question Link: https://leetcode.com/problems/word-pattern/
 * Primary idea: Use two dictionarys to determine if a character is unique to a word
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class WordPattern {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        let strs = str.split(separator: " ").map(String.init)
        
        guard pattern.count == strs.count else {
            return false
        }
        
        var patternToWord = [Character: String]()
        var wordToPattern = [String: Character]()
        
        for (i, char) in pattern.enumerated() {
            let word = strs[i]
            
            if patternToWord[char] == nil && wordToPattern[word] == nil {
                wordToPattern[word] = char
                patternToWord[char] = word
            } else {
                if patternToWord[char] != word || wordToPattern[word] != char {
                    return false
                }
            }
        }
        
        return true
    }
}