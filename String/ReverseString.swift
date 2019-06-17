/**
 * Question Link: https://leetcode.com/problems/reverse-string/
 * Primary idea: Use reverse() to help reverse the string
 * 
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class ReverseString {
    func reverseString(s: String) -> String {
        return String(s.reversed())
    }
}
