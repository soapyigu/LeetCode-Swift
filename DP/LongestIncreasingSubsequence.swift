/**
 * Question Link: https://leetcode.com/problems/longest-increasing-subsequence/
 * Primary idea: Dynamic Programming, update the array which ends at current index using binary search
 * Time Complexity: O(nlogn), Space Complexity: O(n)
 */

class LongestIncreasingSubsequence {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        guard let first = nums.first else {
            return 0
        }
        
        var ends = [first]
        
        for i in 1..<nums.count {
            
            // find first greater ends number
            var left = 0, right = ends.count 
            
            while left < right {
                let mid = (right - left) / 2 + left
                
                if ends[mid] < nums[i] {
                    left = mid + 1
                } else {
                    right = mid
                }
            }
            
            if right >= ends.count {
                ends.append(nums[i])
            } else {
                ends[right] = nums[i]
            }
        }
        
        return ends.count
    }
}