/**
 * Question Link: https://leetcode.com/problems/move-zeroes/
 * Primary idea: keep index zeroIndex, traverse through the array and swap the value
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class MoveZeroes {
    func moveZeroes(_ nums: inout [Int]) {
        var zeroIndex = 0
  
        for i in 0 ..< nums.count {
            if nums[i] != 0 {
                _swap(&nums, i, zeroIndex)
                zeroIndex += 1
            }
        }
    }

    private func _swap<T>(_ nums: inout Array<T>, _ p: Int, _ q: Int) {
        (nums[p], nums[q]) = (nums[q], nums[p])
    }
}