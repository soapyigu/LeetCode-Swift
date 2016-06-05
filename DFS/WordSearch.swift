/**
 * Question Link: https://leetcode.com/problems/word-search/
 * Primary idea: Classic Depth-first Search, go up, down, left, right four directions
 * 
 * Time Complexity: O((n^2)!), Space Complexity: O(n^2)
 *
 */

class WordSearch {
    func exist(board: [[Character]], _ word: String) -> Bool {
        guard board.count > 0 && board[0].count > 0 else {
            return false
        }
        
        let m = board.count
        let n = board[0].count
        var visited = Array(count: m, repeatedValue: Array(count: n, repeatedValue: false))
        var wordContent = [Character](word.characters)
        
        for i in 0 ..< m {
            for j in 0 ..< n {
                if board[i][j] == wordContent[0] && _dfs(board, wordContent, m, n, i, j, &visited, 0) {
                    return true
                }
            }
        }
        
        return false
    }
    
    private func _dfs(board: [[Character]], _ wordContent: [Character], _ m: Int, _ n: Int, _ i: Int, _ j: Int, inout _ visited: [[Bool]], _ index: Int) -> Bool {
        if index == wordContent.count {
            return true
        }
    
        guard i >= 0 && i < m && j >= 0 && j < n else {
            return false
        }
        guard !visited[i][j] && board[i][j] == wordContent[index] else {
            return false
        }
        
        visited[i][j] = true
        
        if _dfs(board, wordContent, m, n, i + 1, j, &visited, index + 1) || _dfs(board, wordContent, m, n, i - 1, j, &visited, index + 1) || _dfs(board, wordContent, m, n, i, j + 1, &visited, index + 1) || _dfs(board, wordContent, m, n, i, j - 1, &visited, index + 1) {
            return true
        }
        visited[i][j] = false
        
        return false
    }
}