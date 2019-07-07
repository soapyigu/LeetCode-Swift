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
    func rotate(_ nums: inout [Int], _ k: Int) {
        guard nums.count > 0 && k > 0 else {
            return
        }
        let k = k % nums.count
        guard k != 0 else {
            return
        }
        _reverse(&nums, 0, nums.count - 1)
        _reverse(&nums, 0, k - 1)
        _reverse(&nums, k, nums.count - 1)
    }
    
    private func _reverse(_ nums: inout [Int], _ startIdx: Int, _ endIdx: Int) {
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
    
    private func _swap<T>(_ nums: inout Array<T>, _ p: Int, _ q: Int) {
        (nums[p], nums[q]) = (nums[q], nums[p])
    }
}
