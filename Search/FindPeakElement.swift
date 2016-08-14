/**
 * Question Link: https://leetcode.com/problems/find-peak-element/
 * Primary idea: Classic Binary Search  
 *
 * Time Complexity: O(logn), Space Complexity: O(1)
 */

class FindPeakElement {
    func findPeakElement(nums: [Int]) -> Int {
        guard nums.count > 1 else {
            return 0
        }
        
        var left = 1
        var right = nums.count - 2
        var mid = 0
        
        while left <= right {
            mid = (right - left) / 2 + left
            if nums[mid] > nums[mid - 1] && nums[mid] > nums[mid + 1] {
                return mid
            } else if nums[mid] < nums[mid + 1] {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        if nums[left] >= nums[right] {
            return left
        } else {
            return right
        }
    }
}