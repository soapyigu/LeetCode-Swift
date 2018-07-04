/**
 * Question Link: https://leetcode.com/problems/word-pattern-ii/
 * Primary idea: Depth first search, split the string to find possible word to pattern character until find the end
 * 
 * Time Complexity: O(n^n), Space Complexity: O(n)
 *
 */

class WordPatternII {
    func wordPatternMatch(_ pattern: String, _ str: String) -> Bool {        
        return helper(pattern, str, [Character: String]())
    }
    
    fileprivate func helper(_ pattern: String, _ str: String, _ patternToWord: [Character: String]) -> Bool {
        guard let firstChar = pattern.first, str.count > 0 else {
            return pattern.isEmpty && str.isEmpty
        }
        
        let newPattern = String(pattern.suffix(pattern.count - 1))
        
        if let existingWord = patternToWord[firstChar] {
            if str.hasPrefix(existingWord) {
                return helper(newPattern, String(str.suffix(str.count - existingWord.count)), patternToWord)
            } else {
                return false
            }
        }
        
        for i in 0..<str.count {
            
            let word = String(str.prefix(i + 1))
            
            // word is already used for another pattern
            if patternToWord.values.contains(word) {
                continue
            }
            
            var patternToWord = patternToWord
            patternToWord[firstChar] = word
            if helper(newPattern, String(str.suffix(str.count - word.count)), patternToWord) {
                return true
            }
        }
        
        return false
    }
}