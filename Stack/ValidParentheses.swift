/**
 * Question Link: https://leetcode.com/problems/valid-parentheses/
 * Primary idea: Use a stack to see whether the peek left brace is correspond to the current right one
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class ValidParentheses {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()

        for char in s {
            switch char {
            case "(", "[", "{":
                stack.append(char)
            case ")":
                if stack.popLast() != "(" {
                    return false
                }
            case "]":
                if stack.popLast() != "[" {
                    return false
                }
            case "}":
                if stack.popLast() != "{" {
                    return false
                }
            default:
                continue
            }
        }

        return stack.isEmpty
    }
}