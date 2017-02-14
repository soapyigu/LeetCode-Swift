/**
 * Question Link: https://leetcode.com/problems/burst-balloons/
 * Primary idea: Dynamic Programming, dp[i][j] represents the max coins from ballon i to j, 
 *               transition function: dp[i][j] = max(dp[i][j], nums[i - 1]*nums[k]*nums[j + 1] + dp[i][k - 1] + dp[k + 1][j])
 *   
 * Note: for loops should start by length, not by start
 *
 * Time Complexity: O(n^3), Space Complexity: O(n)
 *
 */

class BurstBalloons {
    func maxCoins(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
  
        let n = nums.count, nums = renderNums(nums)
        var dp = Array(repeating: Array(repeating: 0, count: nums.count), count: nums.count)
  
        for len in 1 ... n {
            for left in 1 ... n - len + 1 {
                let right = left + len - 1
                    for k in left ... right {
                        dp[left][right] = max(dp[left][right], nums[left - 1] * nums[k] * nums[right + 1] + dp[left][k - 1] + dp[k + 1][right])
                    }
            }
        }
  
        return dp[1][n]
    }

    private func renderNums(_ nums: [Int]) -> [Int] {
        var nums = nums
  
        nums.append(1)
        nums.insert(1, at: 0)
  
        return nums
    }
}