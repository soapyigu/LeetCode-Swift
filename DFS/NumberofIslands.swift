/**
 * Question Link: https://leetcode.com/problems/number-of-islands/
 * Primary idea: Classic Depth-first Search, go up, down, left, right four directions
 * 
 * Time Complexity: O(mn), Space Complexity: O(1)
 *
 */

class NumberofIslands {
    func numIslands(_ grid: [[Character]]) -> Int {
        let (m, n) = (grid.count, grid[0].count)
        var isVisited = Array(repeating: Array(repeating: false, count: n), count: m), result = 0

        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == "1" && !isVisited[i][j] {
                    result += 1

                    dfs(grid, i, j, m, n, &isVisited)
                }
            }
        }

        return result
    }

    private func dfs(_ grid: [[Character]], _ i: Int, _ j: Int, _ m: Int, _ n: Int, _ isVisited: inout [[Bool]]) {
        guard i >= 0 && i < m && j >= 0 && j < n else {
            return
        }

        if isVisited[i][j] || grid[i][j] == "0" {
            return
        }

        isVisited[i][j] = true

        dfs(grid, i + 1, j, m, n, &isVisited)
        dfs(grid, i - 1, j, m, n, &isVisited)
        dfs(grid, i, j + 1, m, n, &isVisited)
        dfs(grid, i, j - 1, m, n, &isVisited)
    }
}