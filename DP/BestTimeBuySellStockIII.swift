/**
 * Question Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iii/
 * Primary idea: Dynamic Programming, find point where sum of [0, i] and [i, count - 1] 
 *               is largest
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class BestTimeBuySellStockIII {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 0 else {
            return 0
        }
        
        var maxProfit = 0
        var finalMaxProfit = 0
        var maxProfitLeft = [Int]()
        var low = prices.first!
        var high = prices.last!
        
        for price in prices {
            maxProfit = max(price - low, maxProfit)
            low = min(price, low)
            maxProfitLeft.append(maxProfit)
        }
        
        maxProfit = 0
        
        for i in (0..<prices.count).reversed() {
            let price = prices[i]
            maxProfit = max(high - price, maxProfit)
            high = max(price, high)
            finalMaxProfit = max(finalMaxProfit, maxProfit + maxProfitLeft[i])
        }
        
        return finalMaxProfit
    }
}