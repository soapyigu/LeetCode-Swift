/**
 * Question Link: https://leetcode.com/problems/reverse-string/
 * Primary idea: Use reverse() to help reverse the string
 * 
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class ReverseString {
    func reverseString(_ s: inout [Character]) {
        let string = String(String(s).reversed())
        for (index, letter) in string.enumerated() {
            s[index] = letter
        }
    }
}
