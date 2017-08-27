/**
 * Question Link: https://leetcode.com/problems/keyboard-row/
 * Primary idea: Use filter to determine the word is subset or not.
 * 
 * Note: You can also use intersect() or union() functions to solve this problem.
 *
 * Time Complexity: O(nm), Space Complexity: O(n)
 *
 */

class KeyboardRow {
    func findWords(_ words: [String]) -> [String] {
        let rowOne = "qwertyuiop", rowTwo = "asdfghjkl", rowThree = "zxcvbnm"

        return words.filter { word in rowOne.contains(word) || rowTwo.contains(word) || rowThree.contains(word) }
    }

    extension String {
        func contains(_ word: String) -> Bool {
            return word.filter { c in !self.contains(c) }.characters.count == 0
        }
    }
}