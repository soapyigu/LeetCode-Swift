/**
 * Question Link: https://leetcode.com/problems/coin-change-ii/
 * Primary idea: Dynamic Programming,  dp[i] += dp[i - coin]
 * Note: Loopo of coins should be outside to avoid duplicates
 * Time Complexity: O(n^2), Space Complexity: O(n)
 */

 class CoinChangeII {
    func change(_ amount: Int, _ coins: [Int]) -> Int {
        guard amount > 0 else {
            return 1
        }
        
        var dp = [Int](repeating: 0, count: amount + 1)
        dp[0] = 1
        
        for coin in coins {
            for i in 1...amount {
                if i >= coin {
                    dp[i] += dp[i - coin]
                }
            }
        }
        
        return dp[amount]
    }
}