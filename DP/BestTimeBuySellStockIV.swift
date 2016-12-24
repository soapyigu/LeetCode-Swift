/**
 * Question Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iii/
 * Primary idea: Dynamic Programming, general solution for Best Time Buy Sell Stock III, 
 *				 make a global and local dynamic array to find the biggest value
 *
 * Note: when k >= n, dynamic programming is not efficient, 
 *		 we can take advantage of the method in Best Time Buy Sell Stock II
 *
 * Time Complexity: O(n^2), Space Complexity: O(n)
 *
 */

 class BestTimeBuySellStockIV {
    func maxProfit(_ k: Int, _ prices: [Int]) -> Int {
        let n = prices.count
        
        guard k > 0 && n > 1 else {
            return 0
        }
        guard k < n else {
            return makeMaxProfit(prices)
        }
        
        var local = Array(repeating: 0, count: k + 1), global = Array(repeating: 0, count: k + 1)
        
        for i in 0 ..< n - 1 {
            let diff = prices[i + 1] - prices[i]
            for j in stride(from: k, to: 0, by: -1) {
                local[j] = max(global[j - 1] + max(diff, 0), local[j] + diff)
                global[j] = max(global[j], local[j])
            }
        }
        
        return global[k]
    }
    
    private func makeMaxProfit(_ prices: [Int]) -> Int {
        var sum = 0
    
        for i in 1 ..< prices.count {
            let diff = prices[i] - prices[i - 1]
            sum += diff > 0 ? diff : 0
        }
        
        return sum
    }
}