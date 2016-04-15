/**
 * Question Link: https://leetcode.com/problems/search-in-rotated-sorted-array/
 * Primary idea: Binary Search, check left or right is sorted, then search in the part  
 *
 * Time Complexity: O(logn), Space Complexity: O(1)
 */

class SearchInRotatedSortedArray {
    func search(nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            var mid = (right - left) / 2 + left
            
            if nums[mid] == target {
                return mid
            }
            
            if nums[mid] >= nums[left] {
                if nums[mid] > target && target >= nums[left] {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            } else {
                if nums[mid] < target && target <= nums[right] {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
        }
        
        return -1
    }
}