/**
 * Question Link: https://leetcode.com/problems/valid-number/
 * Primary idea: Iterate through the string and handle the point, exponent, number, and sign cases separately.
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class ValidNumber {
    func isNumber(_ s: String) -> Bool {
        var hasPoint = false, hasExponent = false, hasNumber = false
        let s = Array(s.trimmingCharacters(in: .whitespaces))
        
        for (i, char) in s.enumerated() {
            if char.isNumber {
                hasNumber = true
            } else if char == "e" {
                if hasExponent || i == s.count - 1 || !hasNumber {
                    return false
                } else {
                    hasExponent = true
                }
            } else if char == "." {
                if hasPoint || hasExponent {
                    return false
                } else {
                    hasPoint = true
                }
            } else if char == "+" || char == "-" {
                if i != 0 && (s[i - 1] != "e" || i == s.count - 1) {
                    return false
                }
            } else {
                return false
            }
        }
        
        // s could be made up of all white spaces or all symbols
        return hasNumber
    }
}