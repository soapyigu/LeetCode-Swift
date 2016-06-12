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
        
        for i in 0 ..< nums.count {
            if nums[i] != 0 {
                _swap(&nums, zeroIndex, i)
                zeroIndex += 1
            }
        }
    }
    
    private func _swap(inout nums: [Int], _ p: Int, _ q: Int) {
        let temp = nums[p]
        nums[p] = nums[q]
        nums[q] = temp
    }
}