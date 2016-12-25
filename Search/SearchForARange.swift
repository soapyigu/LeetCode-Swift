/**
 * Question Link: https://leetcode.com/problems/search-for-a-range/
 * Primary idea: Binary Search, check left or right separately
 *
 * Time Complexity: O(logn), Space Complexity: O(1)
 */

class SearchForARange {
    func searchRange(nums: [Int], _ target: Int) -> [Int] {
        var res = [-1, -1]
        
        guard nums.count > 0 else {
            return res
        }
        
        res[0] = _search(nums, target, true)
        res[1] = _search(nums, target, false)
        
        return res
    }
    
    private func _search(nums: [Int], _ target: Int, _ isLeft: Bool) -> Int {
        var left = 0
        var right = nums.count - 1
        var mid = 0
        
        while left + 1 < right {
            mid = (right - left) / 2 + left
            if nums[mid] == target {
                if isLeft {
                    right = mid
                } else {
                    left = mid
                }
            } else if nums[mid] > target {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        
        if isLeft {
            if _isIndexValid(left, nums, target) {
                return left
            }
            if _isIndexValid(right, nums, target) {
                return right
            }
        } else {
            if _isIndexValid(right, nums, target) {
                return right
            }
            if _isIndexValid(left, nums, target) {
                return left
            }
        }
        
        return -1
    }
    
    private func _isIndexValid(index: Int, _ nums: [Int], _ target: Int) -> Bool {
        return index >= 0 && index < nums.count && nums[index] == target
    }
}