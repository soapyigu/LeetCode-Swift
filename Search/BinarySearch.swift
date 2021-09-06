/**
 * Question Link: https://leetcode.com/problems/binary-search/
 * Primary idea: iterative implementation
 * Time Complexity: O(log n), Space Complexity: O(1)
 *
 */

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var pivot = 0
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            pivot = left + (right - left) / 2
            
            if nums[pivot] == target {
                return pivot
            }
            
            if target < nums[pivot] {
                right = pivot - 1
            } else {
                left = pivot + 1
            }            
        }
        
        return -1
    }
}
