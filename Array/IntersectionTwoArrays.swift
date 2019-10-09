/**
 * Question Link: https://leetcode.com/problems/intersection-of-two-arrays/
 * Primary idea: Use set to hold numbers for one array and iterate the other one to output result, 
 *               remove the number from set to avoid duplicates.
 *
 * Note: Do not use built-in intersection function for Set in Swift, that is not this question is asking for.
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class IntersectionTwoArrays {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] { 
        var set = Set(nums1), res = [Int]()
        
        for num in nums2 where set.contains(num) {
            res.append(num)
            set.remove(num)
        }
        
        return res
    }
}
