/**
 * Question Link: https://leetcode.com/problems/minimum-size-subarray-sum/
 * Primary idea: Two Pointers, anchor the former and move forward the latter one to ensure the sum of subarray just covers the target
 * Note: There could be no valid subarray which sum >= target
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

 class MinimumSizeSubarraySum {
    func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
        var miniSize = Int.max, start = 0, currentSum = 0
        
        for (i, num) in nums.enumerated() {
            currentSum += num
            
            while currentSum >= s, start <= i {
                miniSize = min(miniSize, i - start + 1)
                
                currentSum -= nums[start]
                start += 1
            }
        }
        
        return miniSize == Int.max ? 0 : miniSize
    }
}
