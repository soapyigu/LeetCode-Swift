/**
 * Question Link: https://leetcode.com/problems/longest-valid-parentheses/
 * Primary idea: Push index to a stack and pop encountering ")"
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class LongestValidParentheses {
    func longestValidParentheses(_ s: String) -> Int {
        var stack = [Int](), longest = 0, start = 0
        
        for (i, char) in s.enumerated() {
            if char == "(" {
                stack.append(i)
            } else {
                if !stack.isEmpty {
                    stack.removeLast()
                    
                    if let last = stack.last {
                        longest = max(longest, i - last)
                    } else {
                        longest = max(longest, i - start + 1)
                    }
                } else {
                    start = i + 1   
                }
            }
        }
        
        return longest
    }
}
