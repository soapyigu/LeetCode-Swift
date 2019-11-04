/**
 * Question Link: https://leetcode.com/problems/search-insert-position/
 * Primary idea: Binary Search, until two variables left
 *
 * Time Complexity: O(logn), Space Complexity: O(1)
 */

class SearchInsertPosition {
    func searchInsert(nums: [Int], _ target: Int) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        
        var left = 0
        var right = nums.count - 1
        var mid = 0
        
        while left + 1 < right {
            mid = (right - left) / 2 + left
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                left = mid
            } else {
                right = mid
            }
        }
        
        if nums[right] < target {
            return right + 1
        }
        if nums[left] >= target {
            return left
        }
        
        return right
    }

    func searchInsertI(nums: [Int], _ target: Int) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        
        var left = 0
        var right = nums.count - 1

        var res = 0
        while left <= right {
            let mid = left + (right - left) / 2 
            if nums[mid] == target {

                return mid
            } else if nums[mid] < target {
                
                res = mid + 1
                left = mid + 1
            } else {

                res = mid 
                right = mid - 1
            }
        }
        
        return res
    }
}
