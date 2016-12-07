/**
 * Question Link: https://leetcode.com/problems/power-of-three/
 * Primary idea: Use the largest 3^n int number to mod
 * Time Complexity: O(1), Space Complexity: O(1)
 *
 */

 class PowerThree {
    func isPowerOfThree(n: Int) -> Bool {
        guard n > 0 else {
            return false
        }
        
        return 1162261467 % n == 0
    }
}