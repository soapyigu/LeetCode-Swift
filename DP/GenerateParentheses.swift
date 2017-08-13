/**
 * Question Link: https://leetcode.com/problems/generate-parentheses/
 * Primary idea: Dynamic Programming, generate the current parentheses based on previous one
 * Note: Use a set to avoid duplicates
 * Time Complexity: O(n^2), Space Complexity: O(n)
 *
 */

class GenerateParentheses {
    func generateParenthesis(_ n: Int) -> [String] {
        var set = Set<String>()
        
        guard n > 0 else {
            return [""]
        }
        
        for str in generateParenthesis(n - 1) {
            for (i, char) in str.characters.enumerated() {
                if char == "(" {
                    set.insert(String(Array(str.characters)[0...i]) + "()" + String(Array(str.characters)[i + 1..<str.characters.count]))
                }
            }
            set.insert(str + "()")
        }
        
        return [String](set)
    }
}