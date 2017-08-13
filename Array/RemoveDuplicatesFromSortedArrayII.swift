/**
 * Question Link: https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/
 * Primary idea: keep a index, compare between the element at that index, the element at index - 1, 
 *               and the element moving forward
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class RemoveDuplicatesFromSortedArrayII {
    func removeDuplicates(inout nums: [Int]) -> Int {
        // edge case
        if nums.count <= 2 {
            return nums.count
        }
        
        var lastIndex = 1
        for i in 2..<nums.count {
            if nums[lastIndex] != nums[i] || nums[lastIndex] != nums[lastIndex - 1] {
                lastIndex += 1
                nums[lastIndex] = nums[i]
            }
        }
        
        return lastIndex + 1
    }
}