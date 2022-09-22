/**
 * Question Link: https://leetcode.com/problems/number-of-closed-islands/
 * Primary idea: Classic Depth-first Search, go up, down, left, right four directions. Return false only it hits the edge.
 * 
 * Time Complexity: O(mn), Space Complexity: O(mn)
 *
 */

class NumberClosedIslands {
    func closedIsland(_ grid: [[Int]]) -> Int {
        let m = grid.count, n = grid[0].count
        
        var isVisited = Array(repeating: Array(repeating: false, count: n), count: m), res = 0
        
        for i in 0..<m {
            for j in 0..<n {
                guard !isVisited[i][j], grid[i][j] == 0 else {
                    continue
                }
                
                if dfs(grid, i, j, m, n, &isVisited) {
                    res += 1
                }
            }
        }
        
        return res
    }
    
    private func dfs(_ grid: [[Int]], _ i: Int, _ j: Int, _ m: Int, _ n: Int, _ isVisited: inout [[Bool]]) -> Bool {
        guard i >= 0 && i < m && j >= 0 && j < n else {
            return false
        }
        
        if grid[i][j] == 1 {
            return true
        }
        
        isVisited[i][j] = true
        
        
        var up = true, down = true, left = true, right = true
    
        if i - 1 < 0 || !isVisited[i - 1][j] {
            up = dfs(grid, i - 1, j, m, n, &isVisited)
        }
        if i + 1 >= m || !isVisited[i + 1][j] {
            down = dfs(grid, i + 1, j, m, n, &isVisited)
        }
        if j - 1 < 0 || !isVisited[i][j - 1] {
            left = dfs(grid, i, j - 1, m, n, &isVisited)
        }
        if j + 1 >= n || !isVisited[i][j + 1] {
            right = dfs(grid, i, j + 1, m, n, &isVisited)
        }
          
        return up && down && left && right
    }
}
