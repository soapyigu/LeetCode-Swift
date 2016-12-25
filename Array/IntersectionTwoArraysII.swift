/**
 * Question Link: https://leetcode.com/problems/intersection-of-two-arrays-ii/
 * Primary idea: Sort and iterate to find all common elements
 * Note: Set cannot help you to find the number of common elements; thus it is not effective
 *
 * Time Complexity: O(nlogn), Space Complexity: O(n)
 *
 */

 class IntersectionTwoArraysII {
    func intersect(nums1: [Int], _ nums2: [Int]) -> [Int] {
        var nums1 = nums1.sort({$0 < $1})
        var nums2 = nums2.sort({$0 < $1})
        
        var i = 0
        var j = 0
        var res = [Int]()
        
        while i < nums1.count && j < nums2.count {
            if nums1[i] < nums2[j] {
                i += 1
            } else if nums1[i] > nums2[j] {
                j += 1
            } else {
                res.append(nums1[i])
                i += 1
                j += 1
            }
        }
        
        return res
    }
}