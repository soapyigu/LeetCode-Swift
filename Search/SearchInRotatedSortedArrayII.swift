/**
 * Question Link: https://leetcode.com/problems/search-in-rotated-sorted-array-ii/
 * Primary idea: Binary Search, check left or right is sorted, then search in the part, jump if dupliates
 *
 * Time Complexity: O(logn), Space Complexity: O(1)
 */

class SearchInRotatedSortedArrayII {
    func search(nums: [Int], _ target: Int) -> Bool {
        var left = 0
        var right = nums.count - 1
        var mid = 0
        
        while left <= right {
            mid = (right - left) / 2 + left
            
            if nums[mid] == target {
                return true
            }
            
            if nums[mid] > nums[left] {
                if nums[mid] > target && target >= nums[left] {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            } else if nums[mid] < nums[left]{
                if nums[mid] < target && target <= nums[right] {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            } else {
                left += 1
            }
        }
        
        return false
    }
}