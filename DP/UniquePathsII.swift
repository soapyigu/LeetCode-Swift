/**
 * Question Link: https://leetcode.com/problems/unique-paths-ii/
 * Primary idea: 2D Dynamic Programming, use a 2D array as a cache to store calculated data
 * Time Complexity: O(mn), Space Complexity: O(mn)
 */

class UniquePathsII {
    func uniquePathsWithObstacles(obstacleGrid: [[Int]]) -> Int {
        let m = obstacleGrid.count
        let n = obstacleGrid[0].count
    
        var pathNums = Array(count: m, repeatedValue: Array(count: n, repeatedValue: 0))
        return _helper(&pathNums, m - 1, n - 1, obstacleGrid)
    }
    
    func _helper(inout _ pathNums: [[Int]], _ m: Int, _ n: Int, _ obstacleGrid: [[Int]]) -> Int {
        // termination
        if m < 0 || n < 0 || obstacleGrid[m][n] == 1 {
            return 0
        }
        if m == 0 && n == 0 {
            return 1
        }
        if pathNums[m][n] != 0 {
            return pathNums[m][n]
        }
        
        pathNums[m][n] = _helper(&pathNums, m - 1, n, obstacleGrid) + _helper(&pathNums, m, n - 1, obstacleGrid)
        
        return pathNums[m][n]
    }
}