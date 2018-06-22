/**
 * Question Link: https://leetcode.com/problems/unique-paths-ii/
 * Primary idea: 2D Dynamic Programming, use a 2D array as a cache to store calculated data
 * Time Complexity: O(mn), Space Complexity: O(mn)
 */

class UniquePathsII {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        let m = obstacleGrid.count
        guard m > 0 else {
            return 0
        }
        
        let n = obstacleGrid[0].count
        guard n > 0 else {
            return 0
        }
    
        var dp = Array(repeating: Array(repeating: -1, count: n), count: m)
        
        return help(m - 1, n - 1, &dp, obstacleGrid)
    }
    
    fileprivate func help(_ m: Int, _ n: Int, _ dp: inout [[Int]], _ obstacleGrid: [[Int]]) -> Int {
        if m < 0 || n < 0 {
            return 0
        }
        if obstacleGrid[m][n] == 1 {
            return 0
        }
        if m == 0 && n == 0 {
            return 1
        }
        if dp[m][n] != -1 {
            return dp[m][n]
        }
        
        dp[m][n] = help(m - 1, n, &dp, obstacleGrid) + help(m, n - 1, &dp, obstacleGrid)
        return dp[m][n]
    }
}