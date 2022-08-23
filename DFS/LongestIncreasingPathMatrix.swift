/**
 * Question Link: https://leetcode.com/problems/longest-increasing-path-in-a-matrix/
 * Primary idea: Classic Depth-first Search, iterate four directions and update current local max value.
 * 
 * Time Complexity: O(mn), Space Complexity: O(mn)
 *
 */

class LongestIncreasingPathMatrix {
    func longestIncreasingPath(_ matrix: [[Int]]) -> Int {
        let m = matrix.count, n = matrix[0].count
        var res = 0, cache = Array(repeating: Array(repeating: -1, count: n), count: m)

        for i in 0..<m {
            for j in 0..<n {
                res = max(dfs(matrix, i, j, m, n, &cache), res)
            }
        }

        return res
    }

    private func dfs(_ matrix: [[Int]], _ i: Int, _ j: Int, _ m: Int, _ n: Int, _ cache: inout [[Int]]) -> Int {

        if cache[i][j] != -1 {
            return cache[i][j]
        }

        var longestLength = 1
        
        for dir in [(1, 0), (-1, 0), (0, 1), (0, -1)] {
            let x = i + dir.0, y = j + dir.1

            if x >= 0 && x < m && y >= 0 && y < n && matrix[x][y] > matrix[i][j] {
                let candidate = dfs(matrix, x, y, m, n, &cache) + 1
                
                longestLength = max(longestLength, candidate)
            }
        }
        
        cache[i][j] = longestLength
        return cache[i][j]
    }
}