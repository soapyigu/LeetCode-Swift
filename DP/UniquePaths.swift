/**
 * Question Link: https://leetcode.com/problems/unique-paths/
 * Primary idea: 2D Dynamic Programming, use a 2D array as a cache to store calculated data
 * Time Complexity: O(mn), Space Complexity: O(mn)
 *
 */

class UniquePaths {
    func uniquePaths(m: Int, _ n: Int) -> Int {
        var pathNums = Array(count: m, repeatedValue: Array(count: n, repeatedValue: 0))
        return _helper(&pathNums, m - 1, n - 1)
    }
    
    private func _helper(inout pathNums: [[Int]], _ m: Int, _ n: Int) -> Int {
        if m < 0 || n < 0 {
            return 0
        }
        if m == 0 || n == 0 {
            return 1
        }
        
        if pathNums[m][n] != 0 {
            return pathNums[m][n]
        }
        pathNums[m][n] = _helper(&pathNums, m - 1, n) + _helper(&pathNums, m, n - 1)
        
        return pathNums[m][n]
    }
}