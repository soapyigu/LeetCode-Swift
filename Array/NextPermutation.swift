/**
 * Question Link: https://leetcode.com/problems/next-permutation/
 * Primary idea: Traverse the number from right to left, and replace the first smaller one 
 *               with the least bigger one, then reverse all number afterwards
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class NextPermutation {
    func nextPermutation(_ nums: inout [Int]) {
        guard nums.count > 0 else {
            return
        }
        
        var violate = -1
        
        // find violate
        for i in stride(from: nums.count - 1, to: 0, by: -1) {
            if nums[i] > nums[i - 1] {
                violate = i - 1
                break
            }
        }
        
        if violate != -1 {
            for i in stride(from: nums.count - 1, to: violate, by: -1) {
                if nums[i] > nums[violate] {
                    swap(&nums, i, violate)
                    break
                }
            }
        } 
        
        reverse(&nums, violate + 1, nums.count - 1)
    }
    
    func reverse<T>(_ nums: inout [T], _ start: Int, _ end: Int) {
        var start = start, end = end
    
        while start < end {
            swap(&nums, start, end)
            start += 1
            end -= 1
        }
    }
    
    func swap<T>(_ nums: inout [T], _ p: Int, _ q: Int) {
        (nums[p], nums[q]) = (nums[q], nums[p])
    }
}