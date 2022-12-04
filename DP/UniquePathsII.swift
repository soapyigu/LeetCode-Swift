/**
 * Question Link: https://leetcode.com/problems/unique-paths-ii/
 * Primary idea: 2D Dynamic Programming, use a 2D array as a cache to store calculated data
 * Time Complexity: O(mn), Space Complexity: O(mn)
 */

class UniquePathsII {
     func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        let m = obstacleGrid.count, n = obstacleGrid[0].count
        
        var dp = Array(repeating: Array(repeating: 0, count: n), count: m)
        
        for i in 0..<m {
            for j in 0..<n {
                if obstacleGrid[i][j] == 1 {
                    dp[i][j] = 0
                } else {
                    if i == 0 && j == 0 {
                        dp[i][j] = 1
                    } else if i == 0 {
                        dp[i][j] = dp[i][j - 1]
                    } else if j == 0 {
                        dp[i][j] = dp[i - 1][j]
                    } else {
                        dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
                    }
                }
            }
        }
        
        return dp[m - 1][n - 1]
    }
}