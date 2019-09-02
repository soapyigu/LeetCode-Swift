/**
 * Question Link: https://leetcode.com/problems/two-sum-less-than-k/
 * Primary idea: Sort the arry and use two pointers to get the closest maximum value.
 *
 * Note: Directly using two points and update values correspondly to try to solve the 
 *       problem with O(n) time complexity does not work -- it has too many edge cases.
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class TwoSumLessThanK {
    func twoSumLessThanK(_ A: [Int], _ K: Int) -> Int {
        let sortedA = A.sorted()
        var left = 0, right = sortedA.count - 1
        var closest = -1
        
        while left < right {
            if sortedA[left] + sortedA[right] < K {
                closest = max(sortedA[left] + sortedA[right], closest)
                left += 1
            } else {
                right -= 1
            }
        }
        
        return closest
    }
}