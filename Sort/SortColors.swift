/**
 * Question Link: https://leetcode.com/problems/sort-colors/
 * Primary idea: Bucket sort
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class SortColors {
    func sortColors(inout nums: [Int]) {
        guard nums.count > 1 else {
            return
        }
        
        var red = 0
        var blue = nums.count - 1
        var i = 0
        
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
    
    private func _swap<T>(inout nums: Array<T>, _ p: Int, _ q: Int) {
        let temp = nums[p]
        nums[p] = nums[q]
        nums[q] = temp
    }
}