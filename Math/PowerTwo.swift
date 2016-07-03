/**
 * Question Link: https://leetcode.com/problems/power-of-two/
 * Primary idea: Use and to solve the problem
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class PowerTwo {
    func isPowerOfTwo(n: Int) -> Bool {
        guard n > 0 else {
            return false
        }
        
        return n & (n - 1) == 0
    }
}