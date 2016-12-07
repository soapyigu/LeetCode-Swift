/**
 * Question Link: https://leetcode.com/problems/number-of-islands/
 * Primary idea: Classic Depth-first Search, go up, down, left, right four directions
 * 
 * Time Complexity: O(mn), Space Complexity: O(1)
 *
 */

class NumberofIslands {
    func numIslands(grid: [[Character]]) -> Int {
        guard grid.count > 0 && grid[0].count > 0 else {
            return 0
        }
        
        var grid = grid
        let m = grid.count
        let n = grid[0].count
        var count = 0
        
        for i in 0 ..< m {
            for j in 0 ..< n {
                if String(grid[i][j]) == "1" {
                    count += 1
                    _dfs(&grid, m, n, i, j)
                }
            }
        }
        
        return count
    }
    
    private func _dfs(inout grid: [[Character]], _ m: Int, _ n: Int, _ i: Int, _ j: Int) {
        guard i >= 0 && i < m && j >= 0 && j < n && String(grid[i][j]) == "1" else {
            return
        }
        
        grid[i][j] = Character("0")
        
        _dfs(&grid, m, n, i + 1, j)
        _dfs(&grid, m, n, i - 1, j)
        _dfs(&grid, m, n, i, j + 1)
        _dfs(&grid, m, n, i, j - 1)
    }
}