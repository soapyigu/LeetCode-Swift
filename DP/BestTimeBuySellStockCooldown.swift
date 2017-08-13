/**
 * Question Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/
 * Primary idea: Dynamic programming, dp array means the max value sold at today
 * Time Complexity: O(n^2), Space Complexity: O(n)
 *
 */

 class BestTimeBuySellStockCooldown {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        
        var res = 0
        var dp = Array(repeating: 0, count: prices.count)
        
        for i in 1..<prices.count {
            for j in (0..<i).reversed() {
                if j >= 2 {
                    dp[i] = max(dp[i], prices[i] - prices[j] + dp[j - 2])
                } else {
                    dp[i] = max(dp[i], prices[i] - prices[j])
                }
            }
            
            dp[i] = max(dp[i], dp[i - 1])
            res = max(res, dp[i])
        }
        
        return res
    }
}