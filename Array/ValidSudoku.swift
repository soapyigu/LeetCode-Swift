/**
 * Question Link: https://leetcode.com/problems/valid-sudoku/
 * Primary idea: Check rows, columns, and single square separately
 *
 * Time Complexity: O(n^2), Space Complexity: O(n)
 */

class ValidSudoku {
    let size = 9

    func isValidSudoku(board: [[Character]]) -> Bool {
        return _isRowValid(board) && _isColValid(board) && _isSquareValid(board)
    }
    
    private func _isRowValid(board: [[Character]]) -> Bool {
        var visited = Array(count: size, repeatedValue: false)
        
        for i in 0..<size {
            visited = Array(count: size, repeatedValue: false)
            for j in 0..<size {
                if !_isValidChar(board[i][j], &visited) {
                    return false
                }
            }
        }
        
        return true
    }
    
    private func _isColValid(board: [[Character]]) -> Bool {
        var visited = Array(count: size, repeatedValue: false)

        for i in 0..<size {
            visited = Array(count: size, repeatedValue: false)
            for j in 0..<size {
                if !_isValidChar(board[j][i], &visited) {
                    return false
                }
            }
        }
        
        return true
    }
    
    private func _isSquareValid(board: [[Character]]) -> Bool {
        var visited = Array(count: size, repeatedValue: false)
        
        for i in 0.stride(to: size, by: 3) {
            for j in 0.stride(to: size, by: 3) {
                visited = Array(count: size, repeatedValue: false)
                for m in i..<i + 3 {
                    for n in j..<j + 3 {
                        if !_isValidChar(board[m][n], &visited) {
                            return false
                        }
                    }
                }
            }
        }
        
        return true
    }
    
    private func _isValidChar(char: Character, inout _ visited: [Bool]) -> Bool {
        let current = String(char)
        
        if current != "." {
            if let num = Int(current){
                if num < 1 || num > 9 || visited[num - 1] {
                    return false
                } else {
                    visited[num - 1] = true
                }
            } else {
                return false
            }
        } 
        
        return true
    }
}