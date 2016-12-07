/**
 * Question Link: https://leetcode.com/problems/sudoku-solver/
 * Primary idea: Iterate through the whole matrix, try to fill out empty space with all 
 *			     possible cases and check the vaildity
 *
 * Time Complexity: O(n^4), Space Complexity: O(1)
 */

 class SudokuSolver {
    func solveSudoku(_ board: inout [[Character]]) {
        guard board.count != 0 || board[0].count != 0 else {
            return
        }
        helper(&board)
    }
    
    private func helper(_ board: inout [[Character]]) -> Bool {
        let m = board.count, n = board[0].count
    
        for i in 0 ..< m {
            for j in 0 ..< n {
                if board[i][j] == "." {
                    for num in 1 ... 9 {
                        if isValid(board, i, j, Character(String(num))) {
                            board[i][j] = Character(String(num))
                            
                            if helper(&board) {
                                return true
                            } else {
                                board[i][j] = "."
                            }
                        }
                    }
                    return false
                }
            }
        }
        
        return true
    }
    
    private func isValid(_ board: [[Character]], _ i: Int, _ j: Int, _ num: Character) -> Bool {
        let m = board.count, n = board[0].count
    
        // check row
        for x in 0 ..< n {
            if board[i][x] == num {
                return false
            }
        }
        
        // check col
        for y in 0 ..< m {
            if board[y][j] == num {
                return false
            }
        }
        
        // check square
        for x in i / 3 * 3 ..< i / 3 * 3 + 3 {
            for y in j / 3 * 3 ..< j / 3 * 3 + 3 {
                if board[x][y] == num {
                    return false
                }
            }
        }
        
        return true
    }
}