/**
 * Question Link: https://leetcode.com/problems/wiggle-subsequence/
 * Primary idea: Classic Dynamic Programming, two variables/arries to track up or down status
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class WiggleSubsequence {
    func wiggleMaxLength(_ nums: [Int]) -> Int {
        guard nums.count >= 2 else {
            return nums.count
        }
        
        var up = 1, down = 1
        
        for i in 1..<nums.count {
            if nums[i] > nums[i - 1] {
                up = down + 1
            } else if nums[i] < nums[i - 1] {
                down = up + 1
            } 
        }
        
        return max(up, down)
    }
}