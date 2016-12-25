/**
 * Question Link: https://leetcode.com/problems/longest-valid-parentheses/
 * Primary idea: Push index to a stack and pop encountering ")"
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class LongestValidParentheses {
    func longestValidParentheses(_ s: String) -> Int {
        let sChars = Array(s.characters)
        var stack = [Int]()
        var longest = 0
        
        for (i, char) in sChars.enumerated() {
            if char == "(" || stack.isEmpty || sChars[stack.last!] == ")" {
                stack.append(i)
            } else {
                let _ = stack.removeLast()
                if stack.isEmpty {
                    longest = max(longest, i + 1)
                } else {
                    longest = max(longest, i - stack.last!)
                }
            }
        }
        
        return longest
    }
}