/**
 * Question Link: https://leetcode.com/problems/intersection-of-two-arrays/
 * Primary idea: Use set interact function to help
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class IntersectionTwoArrays {
    func intersection(nums1: [Int], _ nums2: [Int]) -> [Int] {
        return Array(Set(nums1).intersection(Set(nums2)))
    }
}
