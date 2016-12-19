/**
 * Question Link: https://leetcode.com/problems/ternary-expression-parser/
 * Primary idea: Use a stack and go from right to left, pop when peek is "?"
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class TernaryExpressionParser {
    func parseTernary(_ expression: String) -> String {
        var stack = [Character]()
        
        for char in expression.characters.reversed() {
            if !stack.isEmpty && stack.last! == "?" {
                stack.removeLast()
                let first = stack.removeLast()
                stack.removeLast()
                let second = stack.removeLast()
                
                if char == "T" {
                    stack.append(first)
                } else {
                    stack.append(second)
                }
            } else {
                stack.append(char)
            }
        }
        
        
        return stack.isEmpty ? "" : String(stack.last!)
    }
}