/**
 * Question Link: https://leetcode.com/problems/largest-number/
 * Primary idea: map and sort the array inplace to form the largest number.
 *
 * Time Complexity: O(nlogn), Space Complexity: O(1)
 *
 */

class Solution {
    func largestNumber(_ A: [Int]) -> String {
        let result = A.map { "\($0)" }.sorted(by: { $0 + $1 > $1 + $0 }).joined()
        return result.first == "0" ? "0" : result
    }
}
