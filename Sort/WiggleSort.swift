/**
 * Question Link: https://leetcode.com/problems/wiggle-sort/
 * Primary idea: Iterate the array and swap the largest one to the middle
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class WiggleSort {
    func wiggleSort(inout nums: [Int]) {
        guard nums.count >= 2 else {
            return
        }
        
        for i in 1.stride(to: nums.count, by: 2) {
            let largestIndex = _getLargest(&nums, i - 1, i, i + 1)
            if i != largestIndex {
                _swap(&nums, largestIndex, i)
            }
        }
    }
    
    private func _swap(inout nums: [Int], _ p: Int, _ q: Int) {
        let temp = nums[p]
        nums[p] = nums[q]
        nums[q] = temp
    }
    
    private func _getLargest(inout nums: [Int], _ x: Int, _ y: Int, _ z: Int) -> Int {
        let xVal = _isValid(x, nums.count) ? nums[x] : Int.min
        let yVal = _isValid(y, nums.count) ? nums[y] : Int.min
        let zVal = _isValid(z, nums.count) ? nums[z] : Int.min
        let maxVal = max(xVal, yVal, zVal)
        
        if maxVal == xVal {
            return x
        } else if maxVal == yVal {
            return y
        } else {
            return z
        }
    }
    
    private func _isValid(index: Int, _ len: Int) -> Bool {
        return index >= 0 && index < len
    }
}