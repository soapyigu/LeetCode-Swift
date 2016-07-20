/**
 * Question Link: https://leetcode.com/problems/reverse-string/
 * Primary idea: Use reverse() to help reverse the string
 * 
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class ReverseString {
    func reverseString(s: String) -> String {
        return String(s.characters.reverse())
    }
}

/**
 * Question Link: https://leetcode.com/problems/reverse-string/
 * Primary idea: Using two iterators, one at the beginning, moving forward, another at the end moving backward.
 *               Swap them each time they move.
 * 
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */
class Solution {
    func reverseString(s: String) -> String {
        var chars: [Character] = [Character](s.characters)
        var b = 0
        var e = chars.count - 1
        while b < e {
            let tmp = chars[b]
            chars[b] = chars[e]
            chars[e] = tmp
            b += 1
            e -= 1
        }
        return String(chars)
    }
}
