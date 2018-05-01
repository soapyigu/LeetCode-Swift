/**
 * Question Link: https://leetcode.com/problems/house-robber/
 * Primary idea: Dynamic Programming, dp[i] = max(dp[i - 1], dp[i - 2], + nums[i])
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class HouseRobber {
    func rob(nums: [Int]) -> Int {
        var curt = 0, prev = 0
        
        for num in nums {
            (curt, prev) = (max(curt, prev + num), curt)
        }
        
        return curt
    }
}