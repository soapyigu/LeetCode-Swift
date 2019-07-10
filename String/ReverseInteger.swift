/**
 * Question Link: https://leetcode-cn.com/problems/reverse-integer/
 * Primary idea: Use Int32.max and Int32.min to judge overflow
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class Solution {
    func reverse(_ x: Int) -> Int {
        var temp = x
        var ans = 0
        while temp != 0 {
            let pop = temp % 10;
            if ans > Int32.max / 10 || (ans == Int32.max / 10 && pop > 7) {
                return 0
            }
            if ans < Int32.min / 10 || (ans == Int32.min / 10 && pop < -8) {
                return 0
            }
            ans = ans * 10 + pop
            temp /= 10
        }
        return ans
    }
}
