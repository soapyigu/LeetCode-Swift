/**
 * Question Link: https://leetcode.com/problems/squares-of-a-sorted-array/
 * Primary idea: traverse the array and square each number then sort
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

 class Solution {
    func sortedSquares(_ A: [Int]) -> [Int] {
        return A.map { $0 * $0}.sorted { $0 < $1 }
    }
}