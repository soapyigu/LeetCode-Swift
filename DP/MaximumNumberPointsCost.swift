/**
 * Question Link: https://leetcode.com/problems/maximum-number-of-points-with-cost/
 * Primary idea: DP. dp[i][j] is the maximum number of points we can have if points[i][j] is the most recent cell we picked.
 * Optimization: Keeps track the current row is enough. Update current row max by traversing from left and right.
 * Time Complexity: O(mn), Space Complexity: O(1)
 *
 */

class MaximumNumberPointsCost {
    func maxPoints(_ points: [[Int]]) -> Int {
        
        let m = points.count, n = points[0].count
        var rowMaxes = points[0]
        
        for i in 1..<m {
            
            var temp = rowMaxes
            var leftMax = 0, rightMax = 0
            
            for j in 0..<n {
                leftMax = max(leftMax - 1, temp[j])
                temp[j] = points[i][j] + leftMax
            }
            
            for j in (0..<n).reversed() {
                rightMax = max(rightMax - 1, rowMaxes[j])
                rowMaxes[j] = max(points[i][j] + rightMax, temp[j])
            }
        }
        
        return rowMaxes.max() ?? 0
    }
}
