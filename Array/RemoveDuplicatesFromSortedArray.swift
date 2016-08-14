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
        
        for num in nums {
            if num != nums[lastIndex] {
                lastIndex += 1
                nums[lastIndex] = num
            }
        }
        
        return lastIndex + 1
    }
}