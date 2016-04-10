/**
 * Question Link: https://leetcode.com/problems/move-zeroes/
 * Primary idea: keep index zeroIndex, traverse through the array and swap the value
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class MoveZeroes {
    func moveZeroes(inout nums: [Int]) {
        var zeroIndex = 0
        var left = 0
        let right = nums.count
        
        while left < right {
            if nums[left] != 0 {
                _swap(&nums, zeroIndex, left)
                zeroIndex += 1
            }
            left += 1
        }
    }
    
    private func _swap(inout nums: [Int], _ p: Int, _ q: Int) {
        let temp = nums[p]
        nums[p] = nums[q]
        nums[q] = temp
    }
}