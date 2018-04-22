/**
 * Question Link: https://leetcode.com/problems/game-of-life/
 * Primary idea: Divide whole things to 4 cases, change 1 to 2 and 0 to 3 to avoid 
 *               overrite issues, and then use %2 to get final results
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class GameLife {
    func gameOfLife(_ board: inout [[Int]]) {
        guard board.count > 0 else {
            return
        }
    
        let m = board.count, n = board[0].count
        
        for i in 0..<m {
            for j in 0..<n {
                changeStatus(&board, i, j, m, n)
            }
        }
        
        board = board.map { $0.map { $0 % 2 } }
    }
    
    fileprivate func changeStatus(_ board: inout [[Int]], _ i: Int, _ j: Int, _ m: Int, _ n: Int) {
        var liveNum = 0
    
        for x in i - 1...i + 1 {
            for y in j - 1...j + 1 {
                if x < 0 || x >= m || y < 0 || y >= n {
                    continue
                }
                if x == i && y == j {
                    continue
                }
                
                liveNum = board[x][y] == 1 || board[x][y] == 2 ? liveNum + 1 : liveNum
            }
        }
        
        if board[i][j] == 1 {
            board[i][j] = liveNum < 2 || liveNum > 3 ? 2 : 1
        } else {
            board[i][j] = liveNum == 3 ? 3 : 0
        }
    }
}