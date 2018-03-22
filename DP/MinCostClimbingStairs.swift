/**
 * Question Link: https://leetcode.com/problems/min-cost-climbing-stairs/description/
 * Primary idea: Dynamic Programming, dp[i] represents the current element will be 
 *               added to previous smallest sum, so the Bellman equation is 
 *               dp[i] = min(dp[i - 1], dp[i - 2]) + cost[i]
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

 class MinCostClimbingStairs {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var dp = [Int](repeating: Int.max, count: cost.count + 1)
        (dp[0], dp[1]) = (cost[0], cost[1])
        
        for i in 2...cost.count {
            if i == cost.count {
                dp[i] = min(dp[i - 1], dp[i - 2])
            } else {
                dp[i] = min(dp[i - 1], dp[i - 2]) + cost[i]
            }
        }
        
        return dp[cost.count]
    }
}