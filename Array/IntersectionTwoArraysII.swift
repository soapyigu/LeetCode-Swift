/**
 * Question Link: https://leetcode.com/problems/intersection-of-two-arrays-ii/
 * Primary idea: Use dictionary to get frequencies of elements of one array, and 
 *               compare with another array to filter the intersection
 * Note: Set cannot help you to find the number of common elements; thus it is not effective
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

 class IntersectionTwoArraysII {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var frequencies = Dictionary(nums1.map { ($0, 1) } , uniquingKeysWith: +)
        var res = [Int]()
        
        for num in nums2 {
            guard let frequent = frequencies[num] else {
                continue
            }
            
            if frequent > 0 {
                frequencies[num]! = frequent - 1
                res.append(num)
            }
        }
        
        return res
    }
}