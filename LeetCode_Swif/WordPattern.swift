/**
 * Question Link: https://leetcode.com/problems/word-pattern/
 * Primary idea: Use two dictionarys to determine if a character is unique to a word
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class WordPattern {
    func wordPattern(pattern: String, _ str: String) -> Bool {
        var wordDict = [String: Character]()
        var charDict = [Character: String]()
        let strs = str.characters.split{$0 == " "}.map(String.init)
        let patterns = [Character](pattern.characters)
        
        guard patterns.count == strs.count else {
            return false
        }
        
        for i in 0 ..< strs.count {
            let currentWord = strs[i]
            let currentChar = patterns[i]
        
            if wordDict[currentWord] == nil && charDict[currentChar] == nil{
                wordDict[currentWord] = currentChar
                charDict[currentChar] = currentWord
            } else {
                if wordDict[currentWord] != currentChar {
                    return false
                }
            }
        }
        
        return true
    }
}