/**
 * Question Link: https://leetcode.com/problems/power-of-four/
 * Primary idea: Use log properties to solve the problem
 * Time Complexity: O(1), Space Complexity: O(1)
 *
 */

class PowerOfFour {
    func isPowerOfFour(_ num: Int) -> Bool {
        return (log(Double(num))/log(4.0)).truncatingRemainder(dividingBy: 1) == 0
    }
}
