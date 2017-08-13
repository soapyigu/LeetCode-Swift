/**
 * Question Link: https://leetcode.com/problems/house-robber-ii/
 * Primary idea: Dynamic Programming, dp[i] = max(dp[i - 1], dp[i - 2], + nums[i])
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class HouseRobberII {
    func rob(nums: [Int]) -> Int {
        guard nums.count != 0 else {
            return 0
        }
        guard nums.count != 1 else {
            return nums[0]
        }
    
        return max(_helper(nums, 0, nums.count - 2), _helper(nums, 1, nums.count - 1))
    }
    
    private func _helper(nums:[Int], _ start: Int, _ end: Int) -> Int {
        var pre = 0, cur = 0, res = 0
        
        for i in start...end {
            res = max(pre + nums[i], cur)
            (cur, pre) = (res, cur)
        }
        
        return res
    }
}