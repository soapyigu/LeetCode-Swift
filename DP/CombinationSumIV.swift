/**
 * Question Link: https://leetcode.com/problems/combination-sum-iv/
 * Primary idea: DFS cannot solve without time limited error, so use DP
 * 
 * Note: Integer overflow
 * Space Complexity: O(n)
 *
 */

class CombinationSumIV {
    func combinationSum4(_ nums: [Int], _ target: Int) -> Int {
        var dp = [Int](repeating: 0, count: target + 1)
        dp[0] = 1
        
        for i in 1 ... target {
            for num in nums.sorted() {
                if i < num {
                    break
                }
            
                if dp[i - num] > Int.max - dp[i] {
                    continue
                }
                dp[i] += dp[i - num]
            }
        }
        
        return dp.last!
    }
}