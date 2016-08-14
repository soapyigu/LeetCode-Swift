/**
 * Question Link: https://leetcode.com/problems/maximum-size-subarray-sum-equals-k/
 * Primary idea: Use a dictionary to track the sum so far since the first until the current
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class MaximumSizeSubarraySumEqualsK {
    func maxSubArrayLen(nums: [Int], _ k: Int) -> Int {
        var longestLen = 0
        var dict = [Int: Int]()
        dict[0] = -1
        var sum = 0
        
        for i in 0 ..< nums.count {
            sum += nums[i]
            
            if let lastIndex = dict[sum - k] {
                longestLen = max(longestLen, i - lastIndex)
            }
            
            guard let index = dict[sum] else {
                dict[sum] = i
                continue
            }
        }
        
        return longestLen
    }
}