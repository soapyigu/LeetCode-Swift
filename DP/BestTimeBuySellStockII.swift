/**
 * Question Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/
 * Primary idea: Add all substractions if sell stock could earn money
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

 class BestTimeBuySellStockII {
    func maxProfit(_ prices: [Int]) -> Int {
        var max = 0
        
        guard prices.count > 1 else {
            return max
        }
        
        for i in 1 ..< prices.count {
            if prices[i] > prices[i - 1] {
                max += prices[i] - prices[i - 1]
            }
        }
        
        return max
    }
}