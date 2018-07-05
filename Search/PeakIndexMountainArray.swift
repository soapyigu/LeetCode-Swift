/**
 * Question Link: https://leetcode.com/problems/peak-index-in-a-mountain-array/
 * Primary idea: Classic Binary Search  
 *
 * Time Complexity: O(logn), Space Complexity: O(1)
 */


class PeakIndexMountainArray {
    func peakIndexInMountainArray(_ A: [Int]) -> Int {
        var left = 0, right = A.count - 1, mid = 0
        
        while left < right {
            mid = (right - left) / 2 + left
            
            if A[mid] > A[mid + 1] {
                right = mid
            } else {
                left = mid + 1
            }
        }
        
        return left
    }
}