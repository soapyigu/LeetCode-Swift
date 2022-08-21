/**
 * Question Link: https://leetcode.com/problems/sudoku-solver/
 * Primary idea: Iterate through the whole matrix, try to fill out empty space with all 
 *			     possible cases and check the vaildity
 *
 * Time Complexity: O((9!) ^ 9), Space Complexity: O(1)
 */


class SudokuSolver {
    private let length = 9
    
    func solveSudoku(_ board: inout [[Character]]) {
        dfs(&board)
    }
    
    private func dfs(_ board: inout [[Character]]) -> Bool {
        let candidates = "123456789"
        
        for i in 0..<length {
            for j in 0..<length {
                if board[i][j] == "." {
                    // place 
                    for candidate in candidates {
                        if isValid(board, i, j, candidate) {
                            board[i][j] = candidate
                            if dfs(&board) {
                                return true
                            }
                            board[i][j] = "."
                        }
                    }
                    
                    return false
                }
            }
        }
        
        return true
    }
    
    private func isValid(_ board: [[Character]], _ i: Int, _ j: Int, _ num: Character) -> Bool {
        
        for n in 0..<length {
            // check row
            if board[n][j] == num {
                return false
            }
            
            // check column
            if board[i][n] == num {
                return false
            }
            
            // check sub-box
            if board[(i / 3) * 3 + n / 3][(j / 3) * 3 + n % 3 ] == num {
                return false
            }
        }
        
        return true
    }
}
}