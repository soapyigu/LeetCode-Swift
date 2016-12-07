/**
 * Question Link: https://leetcode.com/problems/find-minimum-in-rotated-sorted-array-ii/
 * Primary idea: Classic Binary Search
 *
 * Time Complexity: O(logn), Space Complexity: O(1)
 */

class FindMinimumRotatedSortedArrayII {
    func findMin(nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        var mid = 0
        var minVal = Int.max
        
        while left + 1 < right {
            mid = (right - left) / 2 + left
            if nums[mid] > nums[left] {
                minVal = min(nums[left], minVal)
                left = mid + 1
            } else if nums [mid] < nums[left] {
                minVal = min(nums[mid], minVal)
                right = mid - 1
            } else {
                left += 1
            }
        }
        
        return min(minVal, nums[left], nums[right])
    }
}