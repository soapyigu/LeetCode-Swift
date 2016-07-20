/**
 * Question Link: https://leetcode.com/problems/sum-of-two-integers/
 * Primary idea: Add is based on xor, and carry is left shift by one, add carry until it is zero
 * 
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class SumTwoIntegers {
    func getSum(a: Int, _ b: Int) -> Int {
        var a = a
        var b = b
    
        while b != 0 {
            (a, b) = (a ^ b, (a & b) << 1)
        }
        return a
    }
}


/**
 * Question Link: https://leetcode.com/problems/sum-of-two-integers/
 * Primary idea: using ^ instead of +.
 *               00 + 00 <-> ret
 *               01 + 01 <-> ret ^ 10
 *               01 + 00 <-> if ret & 01 != 0
 *                               ret ^ 11
 *                           else
 *                               ret ^ 01
 *
 * Time Complexity: O(1), Space Complexity: O(1)
 */
 
 class Solution {
    func getSum(a: Int, _ b: Int) -> Int {
      var ret = 0;
      for i in 0 ..< 64 {
          let tmp = 1 << i
          if a & tmp == 0 && b & tmp == 0 {
              continue
          } else if a & tmp != 0 && b & tmp != 0 {
              ret = ret ^ (tmp << 1)
          } else {
              if ret & tmp != 0 {
                  ret ^= (tmp << 1)
              }
              ret ^= tmp
          }
      }
      return ret
    }
}
