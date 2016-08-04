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