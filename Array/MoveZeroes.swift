/**
 * Question Link: https://leetcode.com/problems/move-zeroes/
 * Primary idea: keep index for element not equal to 0, traverse and set up the index
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class MoveZeroes {
    func moveZeroes(_ nums: inout [Int]) {
        var nonZeroIdx = 0
        
        for num in nums where num != 0 {
            nums[nonZeroIdx] = num
            nonZeroIdx += 1
        }
        
        while nonZeroIdx < nums.count {
            nums[nonZeroIdx] = 0
            nonZeroIdx += 1
        }
    }
}