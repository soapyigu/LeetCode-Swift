/**
 * Question Link: https://leetcode.com/problems/kth-largest-element-in-an-array/
 * Primary idea: Quick sort
 * Time Complexity: O(nlogn), Space Complexity: O(n)
 */

class KthLargestElementInArray {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        guard let pivot = nums.first else {
            fatalError("Invalid Input")
        }
       
        let leftPart = nums.filter { $0 > pivot }
        let middlePart = nums.filter { $0 == pivot}
        let rightPart = nums.filter { $0 < pivot }
        
        if nums.count == middlePart.count {
            return pivot
        }
        
        if leftPart.count > k - 1 {
            return findKthLargest(leftPart, k)
        } else if k - leftPart.count <= middlePart.count {
            return findKthLargest(middlePart, k - leftPart.count)
        } else {
            return findKthLargest(rightPart, k - leftPart.count - middlePart.count)
        }
    }
}