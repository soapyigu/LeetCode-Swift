/**
 * Question Link: https://leetcode.com/problems/maximum-subarray/
 * Primary idea: Dynamic Programming, each character should be either with previous sequence or 
 *				 start a new sequence as the maximum one
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class MaximumSubarray {
    func maxSubArray(nums: [Int]) -> Int {
        var max_current = nums[0]
        var max_global = nums[0]
        
        for i in 1..<nums.count {
            max_current = max(max_current + nums[i], nums[i])
            max_global = max(max_current, max_global)
        }
        
        return max_global
    }
}