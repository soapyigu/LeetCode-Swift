/**
 * Question Link: https://leetcode.com/problems/rotate-array/
 * Primary idea: reverse the whole array, then reverse parts of it seperately
 *
 * Note: Argument of a function in Swift is let by default, so change it to var if you need to alter the value
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class RotateArray {
    func rotate(inout nums: [Int], _ k: Int) {
        var k = k % nums.count
    
        _reverse(&nums, 0, nums.count - 1)
        _reverse(&nums, 0, k - 1)
        _reverse(&nums, k, nums.count - 1)
    }
    
    private func _reverse(inout nums: [Int], _ startIdx: Int, _ endIdx: Int) {
        // edge case
        if startIdx < 0 || endIdx > nums.count || startIdx >= endIdx {
            return
        }
        
        var startIdx = startIdx
        var endIdx = endIdx
        
        while startIdx < endIdx {
            _swap(&nums, startIdx, endIdx)
            startIdx += 1
            endIdx -= 1
        }
    }
    
    private func _swap(inout nums: [Int], _ p: Int, _ q: Int) {
        var temp = nums[p]
        nums[p] = nums[q]
        nums[q] = temp
    }
}