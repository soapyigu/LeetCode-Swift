/**
 * Question Link: https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/
 * Primary idea: keep a index, compare between the element at that index, the element at index - 1, 
 *               and the element moving forward
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class RemoveDuplicatesFromSortedArrayII {
    func removeDuplicates(inout nums: [Int]) -> Int {
        guard nums.count > 2 else {
            return nums.count
        }
        
        var index = 1
        
        for i in 2..<nums.count {
            if nums[index] != nums[index - 1] || nums[index] != nums[i] {
                index += 1
                nums[index] = nums[i]
            } 
        }
        
        return index + 1
    }
}