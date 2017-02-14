/**
 * Question Link: https://leetcode.com/problems/keyboard-row/
 * Primary idea: Convert each row to set to determine the word is subset or not.
 * 
 * Note: You can also use intersect() or union() functions to solve this problem.
 *
 * Time Complexity: O(nm), Space Complexity: O(n)
 *
 */

class KeyboardRow {
    func findWords(_ words: [String]) -> [String] {
        var res = [String]()
  
        let rowOne = Set("qwertyuiop".characters), rowTwo = Set("asdfghjkl".characters), rowThree = Set("zxcvbnm".characters)
  
        for word in words {
            if isInRow(word, rowOne) || isInRow(word, rowTwo) || isInRow(word, rowThree) {
                res.append(word)
            }
        } 
  
        return res
    }
    
    fileprivate func isInRow(_ word: String, _ row: Set<Character>) -> Bool {
        for char in word.lowercased().characters {
            if !row.contains(char) {
                return false
            }
        }
  
        return true
    }
}