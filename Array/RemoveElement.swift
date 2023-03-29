/**
 * Question Link: https://leetcode.com/problems/remove-element/
 * Primary idea: keep a index, compare the element at that index with val while moving forward
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class RemoveElement {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums = nums.filter { $0 != val }
        return nums.count
    }
}
