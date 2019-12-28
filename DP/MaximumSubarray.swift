/**
 * Question Link: https://leetcode.com/problems/maximum-subarray/
 * Primary idea: Dynamic Programming, each character should be either with previous sequence or 
 *				 start a new sequence as the maximum one
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class MaximumSubarray {
    func maxSubArray(_ nums: [Int]) -> Int {
        var nums = nums
        var ret = nums.removeFirst()
        var curr = ret
        for num in nums {
            curr = max(num, curr + num)
            ret = max(ret, curr)
        }
        return ret
    }
}
