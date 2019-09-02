/**
 * Question Link: https://leetcode.com/problems/missing-number/
 * Primary idea: The distinct number is the sum from 0 to expected end number, which is 
 *               exactly the array length, minus the sum of all the values in array
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class MissingNumber {
    func missingNumber(_ nums: [Int]) -> Int {
        return nums.count * (nums.count + 1) / 2 - nums.reduce(0, +) 
    }
}