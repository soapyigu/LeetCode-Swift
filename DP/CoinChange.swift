/**
 * Question Link: https://leetcode.com/problems/coin-change/
 * Primary idea: Dynamic Programming, transition function is min[i] = min[i - coin] + 1
 * Time Complexity: O(n^2), Space Complexity: O(n)
 */

class CoinChange {
    func coinChange(coins: [Int], _ amount: Int) -> Int {
        // edge case
        guard amount != 0 else {
            return 0
        }
    
        var minNums = [Int](count: amount + 1, repeatedValue: -1)
        
        for i in 0 ... amount {
            for coin in coins {
                if coin == i {
                    minNums[i] = 1
                    break
                }
                if coin < i && minNums[i - coin] != -1 {
                    if minNums[i] == -1 {
                        minNums[i] = minNums[i - coin] + 1
                    } else {
                        minNums[i] = min(minNums[i], minNums[i - coin] + 1)
                    }
                }
            }
        }
        
        return minNums[amount]
    }
}