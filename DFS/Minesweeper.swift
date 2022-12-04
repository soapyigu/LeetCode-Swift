/**
 * Question Link: https://leetcode.com/problems/minesweeper/
 * Primary idea: Classic Depth-first Search. Check current node and dfs all directions if mine count is 0, update the board accordingly.
 * 
 * Time Complexity: O(mn), Space Complexity: O(mn)
 *
 */

class Minesweeper {
    private let dirs = [(0, 1), (0, -1), (1, 0), (-1, 0), (1, 1), (-1, 1), (1, -1), (-1, -1)]

    func updateBoard(_ board: [[Character]], _ click: [Int]) -> [[Character]] {
        let i = click[0], j = click[1]
        var board = board

        if board[i][j] == "M" {
            board[i][j] = "X".first!
            return board
        }

        let m = board.count, n = board[0].count
        var isVisited = Array(repeating: Array(repeating: false, count: n), count: m)

        dfs(&board, i, j, &isVisited)

        return board
    }

    private func dfs(_ board: inout [[Character]], _ i: Int, _ j: Int, _ isVisited: inout [[Bool]]) {
        guard isValid(i, j, board) && !isVisited[i][j] else {
            return
        }

        isVisited[i][j] = true

        if board[i][j] == "E" {
            var count = 0
            for dir in dirs {
                let x = i + dir.0, y = j + dir.1

                if isValid(x, y, board) {
                    if board[x][y] == "X" || board[x][y] == "M" {
                        count += 1
                    }
                }
            }

            if count == 0 {
                board[i][j] = "B".first!

                for dir in dirs {
                    let x = i + dir.0, y = j + dir.1
                    dfs(&board, x, y, &isVisited)
                }
            } else {
                board[i][j] = String(count).first!
            }
        }
    }

    private func isValid(_ i: Int, _ j: Int, _ board: [[Character]]) -> Bool {
        return i >= 0 && i < board.count && j >= 0 && j < board[0].count
    }
}
