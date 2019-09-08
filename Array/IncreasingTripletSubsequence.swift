/**
 * Question Link: https://leetcode.com/problems/increasing-triplet-subsequence/
 * Primary idea: Two pointers. One is to store the smallest value, 
 *               the other is to store the second smallest value.
 *               Return true once find a value greater than both.
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class IncreasingTripletSubsequence {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        var smallest = Int.max, smaller = Int.max
        
        for num in nums {
            if smallest >= num {
                smallest = num
            } else if smaller >= num {
                smaller = num
            } else {
                return true
            }
        }
        
        return false
    }
}