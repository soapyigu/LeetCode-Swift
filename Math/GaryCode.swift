/**
 * Question Link: https://leetcode.com/problems/gray-code/
 * Primary idea: the result of n can be derived from (n - 1) by reversing
                 the order and prepending 1 to each number's binary representation
 *
 * Time Complexity: O(n), Space Complexity: O(2^n)
 *
 */

class GaryCode {
    func grayCode(_ n: Int) -> [Int] {
        var codes = [0]
        for i in 0..<n {
            codes += codes.reversed().map { $0 | 1 << i }
        }
        return codes
    }
}
