/**
 * Question Link: https://leetcode.com/problems/factorial-trailing-zeroes/
 * Primary idea: Calculate how many 5s the number has since it should have more 2 
 *
 * Time Complexity: O(logn), Space Complexity: O(1)
 *
 */

class FactorialTrailingZeroes {
    func trailingZeroes(_ n: Int) -> Int {
        return n > 0 ? n / 5 + trailingZeroes(n / 5) : 0
    }
}