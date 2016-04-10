/**
 * Question Link: https://leetcode.com/problems/remove-duplicates-from-sorted-array/
 * Primary idea: keep a index, compare the element at that index with the element moving forward
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class RemoveDuplicatesFromSortedArray {
    func removeDuplicates(inout nums: [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        }
    
        var lastIndex = 0
        
        for i in 1...nums.count - 1 {
            if nums[i] != nums[lastIndex] {
                lastIndex += 1
                nums[lastIndex] = nums[i]
            }
        }
        
        return lastIndex + 1
    }
}