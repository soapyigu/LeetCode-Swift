/**
 * Question Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
 * Primary idea: Dynamic Programming, iterate the array while changing lowest 
 *               when there is smaller value and update the result
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class BestTimeBuySellStock {
    func maxProfit(prices: [Int]) -> Int {
        guard prices.count > 0 else {return 0}
        var maxProfit = 0
        var buyDay = 0
        
        for i in 1 ..< prices.count {
            let profit = prices[i] - prices[buyDay]
            if profit < 0 {
                buyDay = i
            }
            maxProfit = max(profit, maxProfit)
        }
        
        return maxProfit
    }
}