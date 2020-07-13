/**
 * Question Link: https://leetcode.com/problems/paint-house-ii/
 * Primary idea: Dynamic Programming, keep update previous min cost with its corresponding color
 *               and the second min cost.
 *
 * Note: DP with 2-D array will throw Time Limited Error
 * Time Complexity: O(n), Space Complexity: O(1)
 */

 class PaintHouseII {
    func minCostII(_ costs: [[Int]]) -> Int {
        guard let colors = costs.first, !colors.isEmpty else {
            return 0
        }
        
        var preColor = -1, preMinCost = 0, preSecondMinCost = 0
        
        for cost in costs {
            
            var currentColor = -1, currentMinCost = Int.max, currentSecondMinCost = Int.max
            
            for i in 0..<colors.count {
                let sum = cost[i] + (preColor == i ? preSecondMinCost : preMinCost)
                
                if sum < currentMinCost {
                    currentSecondMinCost = currentMinCost
                    currentMinCost = sum
                    currentColor = i
                } else if sum < currentSecondMinCost {
                    currentSecondMinCost = sum
                }
            }
            
            preColor = currentColor
            preMinCost = currentMinCost
            preSecondMinCost = currentSecondMinCost
        }
        
        return preMinCost
    }
}