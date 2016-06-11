/**
 * Question Link: https://leetcode.com/problems/remove-element/
 * Primary idea: keep a index, compare the element at that index with val while moving forward
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class RemoveElement {
    func removeElement(inout nums: [Int], _ val: Int) -> Int {
        var lastIndex = 0
        
        for num in nums {
            if num != val {
                nums[lastIndex] = num
                lastIndex += 1
            }
        }
        
        return lastIndex
    }
}