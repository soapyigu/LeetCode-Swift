/**
 * Question Link: https://leetcode.com/problems/sort-colors/
 * Primary idea: Bucket sort
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class SortColors {
    func sortColors(_ nums: inout [Int]) {
        var red = 0, blue = nums.count - 1, i = 0
        
        while i <= blue {
            if nums[i] == 0 {
                _swap(&nums, i, red)
                red += 1
                i += 1
            } else if nums[i] == 1 {
                i += 1
            } else {
                _swap(&nums, i, blue)
                blue -= 1
            }
        }
    }
    
    fileprivate func _swap<T>(_ nums: inout [T], _ p: Int, _ q: Int) {
        (nums[p], nums[q]) = (nums[q], nums[p])
    }
}