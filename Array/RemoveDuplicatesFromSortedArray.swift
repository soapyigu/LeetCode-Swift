/**
 * Question Link: https://leetcode.com/problems/remove-duplicates-from-sorted-array/
 * Primary idea: keep a index, compare the element at that index with the element moving forward
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class RemoveDuplicatesFromSortedArray {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty { return 0 }
        
        var i = 0
        for j in 1..<nums.count {
            if nums[i] != nums[j] {
                nums[i + 1] = nums[j]
                i += 1
            }
        }
        
        return i + 1
    }
}
