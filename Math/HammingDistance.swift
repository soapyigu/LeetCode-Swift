/**
 * Question Link: https://leetcode.com/problems/hamming-distance/
 * Primary idea: Bit manipulation, use xor and right shift
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class HammingDistance {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var z = x ^ y, count = 0
        
        while z > 0 {
            count += z & 1
            z = z >> 1
        }
        
        return count
    }
}
