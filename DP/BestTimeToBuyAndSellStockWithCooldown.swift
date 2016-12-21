/**
 * Question Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/ 
 * Primary idea: State Machine Thinking
 * 3 status:
 * i. s0 - not keeping stock, can buy or rest (Initial)
 * ii. s1 - keeping stock, can sell or rest (Just bought stock)
 * iii. s2 - not keeping stock, must rest (Just sold stock)
 * Recommand Reading: https://discuss.leetcode.com/topic/30680/share-my-dp-solution-by-state-machine-thinking/2
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class BestTimeToBuyAndSellStockWithCooldown {
    func maxProfit(_ prices: [Int]) -> Int {
        let count = prices.count
        
        if count <= 1 {
            return 0
        }
        
        // Use 3 arrays to record the 3 different status
        var s0 = [Int](repeatElement(0, count: count))
        var s1 = [Int](repeatElement(0, count: count))
        var s2 = [Int](repeatElement(0, count: count))
        
        // Base cases
        s0[0] = 0
        s1[0] = -prices[0]
        s2[0] = Int.min
        
        for i in 1 ..< count {
            s0[i] = max(s0[i - 1], s2[i - 1])
            s1[i] = max(s1[i - 1], s0[i - 1] - prices[i])
            s2[i] = s1[i - 1] + prices[i]
        }
        
        // Only s0 & s2 may produce the maximum profit (s1 has stocks not sold)
        return max(s0[count - 1], s2[count - 1])
    }
}
