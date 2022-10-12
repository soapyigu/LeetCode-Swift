/**
 * Question Link: https://leetcode.com/problems/squares-of-a-sorted-array/
 * Primary idea: Two pointers. Compare absolute value and assign the bigger one to the right most index of the result.
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class SquaresSortedArray {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var left = 0, right = nums.count - 1, res = Array(repeating: 0, count: nums.count)
        var square = 0, idx = nums.count - 1

        while left <= right {
            
            if abs(nums[left]) < abs(nums[right]) {
                square = nums[right]
                right -= 1
            } else {
                square = nums[left]
                left += 1
            }

            res[idx] = square * square
            idx -= 1
        }

        return res
    }
}
