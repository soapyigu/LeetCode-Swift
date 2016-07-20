/**
 * Question Link: https://leetcode.com/problems/super-pow/
 * Primary idea: a * b % k = (a % k) * (b % k) % k
 *               a ^ b % k = [a ^ (b / 10 * 10) % k] * [a ^ (b % 10) % k] % k
 *               f(a, b) = f(a, b / 10 * 10) * f(a, b % 10) % k
 *                       = f(f(a, b / 10), 10) * f(a, b % 10) % k
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class Solution {
    var base = 1337        
    func pow(a: Int, _ b: Int) -> Int {
        var ret = 1
        for i in 0 ..< b {
            ret = ret * a % base
        }
        return ret
    }

    func superPowHelper(a: Int, _ b: [Int], _ idx: Int) -> Int {
        if (idx < 0) {
            return 1
        }
        return pow(superPowHelper(a, b, idx - 1), 10) * pow(a, b[idx]) % base
    }

    func superPow(a: Int, _ b: [Int]) -> Int {
        return superPowHelper(a, b, b.count - 1)
    }
}
