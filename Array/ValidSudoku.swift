/**
 * Question Link: https://leetcode.com/problems/valid-sudoku/
 * Primary idea: Check rows, columns, and single square separately
 *
 * Time Complexity: O(n^2), Space Complexity: O(n)
 */

class ValidSudoku {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        return areRowsValid(board) && areColsValid(board) && areSubsquaresValid(board)
    }
    
    private func areRowsValid(_ board: [[Character]]) -> Bool {
        var existingDigits = Set<Character>()
        
        for i in 0..<board.count {
            existingDigits.removeAll()
            
            for j in 0..<board[0].count {
                if !isDigitValid(board[i][j], &existingDigits) {
                    return false
                }
            }
        }
        
        return true
    }
    
    private func areColsValid(_ board: [[Character]]) -> Bool {
        var existingDigits = Set<Character>()
        
        for i in 0..<board[0].count {
            existingDigits.removeAll()
            
            for j in 0..<board.count {
                if !isDigitValid(board[j][i], &existingDigits) {
                    return false
                }
            }
        }
        
        return true
    }
    
    private func areSubsquaresValid(_ board: [[Character]]) -> Bool {
        var existingDigits = Set<Character>()
        
        for i in stride(from: 0, to: board.count, by: 3) {
            for j in stride(from: 0, to: board[0].count, by: 3) {
                existingDigits.removeAll()
                
                for m in i..<i + 3 {
                    for n in j..<j + 3 {
                        if !isDigitValid(board[m][n], &existingDigits) {
                            return false
                        }
                    }
                }
            }
        }
        
        return true
    }
    
    private func isDigitValid(_ digit: Character, _ set: inout Set<Character>) -> Bool {
        if digit == "." {
            return true
        }
        
        if set.contains(digit) {
            return false
        } else {
            set.insert(digit)
            return true
        }
    }
}