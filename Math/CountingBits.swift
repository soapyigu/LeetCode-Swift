/**
 * Question Link: https://leetcode.com/problems/counting-bits/
 * Primary idea:
 *   bits[i] = bits[i - p] + 1, while p is the largest power of two that smaller than i;
 *
 *  Time Complexity: O(n), Space Complexity: O(n)
 */

class CountingBits {
    func countBits(num: Int) -> [Int] {
        guard num > 0 else {
            return [0]
        }

        var bits = [Int](count: num + 1, repeatedValue: 0)
        var x = 1
        for i in 1...num {
            if i == x {
                x = x << 1
                bits[i] = 1
            } else {
                bits[i] = bits[i - (x >> 1)] + 1
            }
        }

        return bits
    }
}
