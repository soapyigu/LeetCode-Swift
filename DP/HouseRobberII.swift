/**
 * Question Link: https://leetcode.com/problems/house-robber-ii/
 * Primary idea: Dynamic Programming, dp[i] = max(dp[i - 1], dp[i - 2], + nums[i])
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class HouseRobberII {
    func rob(_ nums: [Int]) -> Int {
        guard nums.count != 1 else {
            return nums[0]
        }
        
        return max(helper(nums, 0, nums.count - 2), helper(nums, 1, nums.count - 1))
    }
    
    fileprivate func helper(_ nums: [Int], _ start: Int, _ end: Int) -> Int {
        if start > end {
            return 0
        }
        
        var prev = 0, current = 0
        
        for i in start...end {
            (current, prev) = (max(prev + nums[i], current), current)
        }
        
        return current
    }
}