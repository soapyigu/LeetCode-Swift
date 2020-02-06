/**
 * Question Link: https://leetcode.com/problems/valid-word-abbreviation/
 * Primary idea: Go through both string and compare characters or skip by the number
 * 
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class ValidWordAbbreviation {
    func validWordAbbreviation(_ word: String, _ abbr: String) -> Bool {
        var i = 0, j = 0
        let word = Array(word), abbr = Array(abbr)
        
        while i < word.count && j < abbr.count {
            if abbr[j].isNumber {
                // edge case: "abbc" vs. "a02c"
                if abbr[j] == "0" {
                    return false
                }
                
                let start = j
                
                while j < abbr.count && abbr[j].isNumber {
                    j += 1
                }
                
                let end = j - 1
                
                i += Int(String(abbr[start...end]))!
            } else {
                if abbr[j] != word[i] {
                    return false
                } else {
                    i += 1
                    j += 1
                }
            }
        }
        
        // edge case: "hi" vs. "hi1"
        return i == word.count && j == abbr.count
    }
}