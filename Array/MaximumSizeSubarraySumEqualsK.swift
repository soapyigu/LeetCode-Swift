/**
 * Question Link: https://leetcode.com/problems/maximum-size-subarray-sum-equals-k/
 * Primary idea: Use a dictionary to track the sum so far since the first until the current
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class MaximumSizeSubarraySumEqualsK {
    func maxSubArrayLen(_ nums: [Int], _ k: Int) -> Int {
        var longestLen = 0, sum = 0, sumToIdx = [Int: Int]()
        sumToIdx[0] = -1
        
        for (i, num) in nums.enumerated() {
            sum += num
            
            if let idx = sumToIdx[sum - k] {
                longestLen = max(longestLen, i - idx)
            }
            
            guard let idx = sumToIdx[sum] else {
                sumToIdx[sum] = i
                continue
            }
        }
        
        return longestLen
    }
}