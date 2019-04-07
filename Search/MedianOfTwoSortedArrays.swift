/**
 * Question Link: https://leetcode.com/problems/median-of-two-sorted-arrays/
 *
 * Primary idea: For arrays of m and n numbers, nums1 and nums2, where m <= n.
 *               To find an index of mid1 in nums1, to separate the arrays into left and right parts:
 *      nums1[0, 1, ..., mid1 - 1] | nums1[mid1, mid1 + 1, ..., m]
 *      nums2[0, 1, ..., mid2 - 1] | nums2[mid2, mid2 + 1, ..., n]
 *
 *      Make sure:
 *              count of left = count of right
 *               max of left <= min of right
 *
 * Time Complexity: O(log(n + m)), Space Complexity: O(1)
 *
 */
 
 class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let m = nums1.count
        let n = nums2.count
        
        if m > n {
            return findMedianSortedArrays(nums2, nums1)
        }

        var halfLength: Int = (m + n + 1) >> 1
        var b = 0, e = m
        var maxOfLeft = 0
        var minOfRight = 0
                
        while b <= e {
            let mid1 = (b + e) >> 1
            let mid2 = halfLength - mid1
            
            if mid1 > 0 && mid2 < n && nums1[mid1 - 1] > nums2[mid2] {
                e = mid1 - 1
            } else if mid2 > 0 && mid1 < m && nums1[mid1] < nums2[mid2 - 1] {
                b = mid1 + 1
            } else {
                if mid1 == 0 {
                    maxOfLeft = nums2[mid2 - 1]
                } else if mid2 == 0 {
                    maxOfLeft = nums1[mid1 - 1]
                } else {
                    maxOfLeft = max(nums1[mid1 - 1], nums2[mid2 - 1])
                }
                
                if (m + n) % 2 == 1 {
                    return Double(maxOfLeft)
                }
                
                if mid1 == m {
                    minOfRight = nums2[mid2]
                } else if mid2 == n {
                    minOfRight = nums1[mid1]
                } else {
                    minOfRight = min(nums1[mid1], nums2[mid2])
                }
                
                break
            }
        }
        return Double(maxOfLeft + minOfRight) / 2.0
    }
}
