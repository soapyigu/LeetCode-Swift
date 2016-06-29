/**
 * Question Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
 * Primary idea: Dynamic Programming, iterate the array while changing lowest 
 *               when there is smaller value and update the result
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class BestTimeBuySellStock {
    func maxProfit(prices: [Int]) -> Int {
        guard prices.count >= 2 else {
            return 0
        }
    
        var maxProfit = 0
        var lowest = prices[0]
        
        for price in prices {
            maxProfit = max(maxProfit, price - lowest)
            lowest = min(lowest, price)
        }
        
        return maxProfit
    }
}