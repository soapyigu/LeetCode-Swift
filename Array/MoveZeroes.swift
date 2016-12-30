/**
 * Question Link: https://leetcode.com/problems/move-zeroes/
 * Primary idea: keep index for element not equal to 0, traverse and set up the index
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class MoveZeroes {
    func moveZeroes(_ nums: inout [Int]) {
        var idx = 0
        
        for (i, num) in nums.enumerated() {
            if num != 0 {
                nums[idx] = num
                idx += 1
            }
        }
        
        while idx < nums.count {
            nums[idx] = 0
            idx += 1
        }
    }
}