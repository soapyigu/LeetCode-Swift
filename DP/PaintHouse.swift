/**
 * Question Link: https://leetcode.com/problems/paint-house/
 * Primary idea: Dynamic Programming,  dp[i][j] += min(dp[i - 1][(j + 1) % 3], dp[i - 1][(j + 2) % 3])
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class PaintHouse {
    func minCost(_ costs: [[Int]]) -> Int {
        guard let colors = costs.first, !colors.isEmpty else {
            return 0
        }
        
        var dp = costs
        
        for i in 1..<costs.count {
            for j in 0..<colors.count {
                dp[i][j] += min(dp[i - 1][(j + 1) % colors.count], dp[i - 1][(j + 2) % colors.count])
            }
        }
        
        return dp[costs.count - 1].min()!
    }
}