/**
 * Question Link: https://leetcode.com/problems/check-if-word-can-be-placed-in-crossword/
 * Primary idea: Classic Depth-first Search, check possible position and go through four directions
 * 
 * Time Complexity: O(mnl), Space Complexity: O(1)
 *
 */

class CheckWordCrossword {
    func placeWordInCrossword(_ board: [[Character]], _ word: String) -> Bool {
        let dirs = [(0, 1), (0, -1), (1, 0), (-1, 0)], m = board.count, n = board[0].count

        for i in 0..<m {
            for j in 0..<n {
                for dir in dirs {
                    let prev = (i - dir.0, j - dir.1)

                    guard !isValid(prev.0, prev.1, board) else {
                        continue
                    }

                    if dfs(0, Array(word), board, i, j, dir) {
                        return true
                    }
                }

            }
        }

        return false
    }

    private func isValid(_ i: Int, _ j: Int, _ board: [[Character]]) -> Bool {
        let m = board.count, n = board[0].count

        return i >= 0 && i < m && j >= 0 && j < n && board[i][j] != "#"
    }

    private func dfs(_ idx: Int, _ word: [Character], _ board: [[Character]], _ i: Int, _ j: Int, _ dir: (Int, Int)) -> Bool {
        if idx == word.count {
            return !isValid(i, j, board)
        }

        guard isValid(i, j, board) else {
            return false
        }

        guard board[i][j] == " " || board[i][j] == word[idx] else {
            return false
        }

        return dfs(idx + 1, word, board, i + dir.0, j + dir.1, dir)
    }
}
