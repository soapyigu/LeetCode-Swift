/**
 * Question Link: https://leetcode.com/problems/super-pow/
 * Primary idea: a * b % k = (a % k) * (b % k) % k
 *               a ^ b % k = [a ^ (b / 10 * 10) % k] * [a ^ (b % 10) % k] % k
 *               f(a, b) = f(a, b / 10 * 10) * f(a, b % 10) % k
 *                       = f(f(a, b / 10), 10) * f(a, b % 10) % k
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class SuperPow {
    let base = 1337
    
    func superPow(a: Int, _ b: [Int]) -> Int {
      return _superPowHelper(a, b, b.count - 1)
    }

    private func _pow(a: Int, _ b: Int) -> Int {
      var ret = 1
      for _ in 0..<b {
        ret = ret * a % base
      }
      return ret
    }
    
    private func _superPowHelper(a: Int, _ b: [Int], _ idx: Int) -> Int {
      guard idx >= 0 else {
        return 1
      }
      return _pow(_superPowHelper(a, b, idx - 1), 10) * _pow(a, b[idx]) % base
    }
}
