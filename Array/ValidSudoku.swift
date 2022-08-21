/**
 * Question Link: https://leetcode.com/problems/valid-sudoku/
 * Primary idea: Check rows, columns, and single square separately
 *
 * Time Complexity: O(n^2), Space Complexity: O(n)
 */

class ValidSudoku {
    func isValidSudoku(_ board: [[Character]]) -> Bool {          
        let len = 9
        
        var rowSet = Array(repeating: Set<Character>(), count: len)
        var colSet = Array(repeating: Set<Character>(), count: len)
        var boxSet = Array(repeating: Set<Character>(), count: len)
        
        for i in 0..<len {    
            for j in 0..<len {
                let currentChar = board[i][j]
                
                if currentChar == "." {
                    continue
                }
                
                // check row
                if !isValid(&rowSet[i], currentChar) {
                    return false 
                }
                
                // check column
                if !isValid(&colSet[j], currentChar) {
                    return false 
                }
                
                // check sub-box
                let idx = 3 * (i / 3) + j / 3
                if !isValid(&boxSet[idx], currentChar) {
                    return false 
                }
            }
        }
        
        return true
    }
    
    private func isValid(_ set: inout Set<Character>, _ char: Character) -> Bool {
        if set.contains(char) {
            return false
        } else {
            set.insert(char)
            return true
        }
    }
}