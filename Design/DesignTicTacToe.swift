/**
 * Question Link: https://leetcode.com/problems/design-tic-tac-toe/
 * Primary idea: Use two arrays and variables for accumulated scroes for 
 *               rows, cols, and diagonal rows. 
 *               Use their absoluate value to determine the winner.
 * Time Complexity: O(1), Space Complexity: O(n)
 *
 */

class TicTacToe {
    
    var rows: [Int]
    var cols: [Int]
    var diagonal: Int
    var antiDiagonal: Int

    /** Initialize your data structure here. */
    init(_ n: Int) {
        rows = Array(repeating: 0, count: n)
        cols = Array(repeating: 0, count: n)
        diagonal = 0
        antiDiagonal = 0
    }
    
    /** Player {player} makes a move at ({row}, {col}).
        @param row The row of the board.
        @param col The column of the board.
        @param player The player, can be either 1 or 2.
        @return The current winning condition, can be either:
                0: No one wins.
                1: Player 1 wins.
                2: Player 2 wins. */
    func move(_ row: Int, _ col: Int, _ player: Int) -> Int {
        let num = player == 1 ? 1 : -1, n = rows.count
        
        // row
        rows[row] += num
        
        // col
        cols[col] += num
        
        // diagonal
        if row == col {
            diagonal += num
        }
        if row + col == n - 1 {
            antiDiagonal += num
        }
        
        if abs(rows[row]) == n || abs(cols[col]) == n || abs(diagonal) == n || abs(antiDiagonal) == n {
            return player
        }
        
        return 0
    }    
}