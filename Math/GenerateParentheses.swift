/**
 * Question Link: https://leetcode.com/problems/generate-parentheses/
 * Primary idea: Dynamic Programming, generate the current parentheses based on previous one
 * Note: Use a set to avoid duplicates
 * Time Complexity: O(n^2), Space Complexity: O(n)
 *
 */

class GenerateParentheses {
    func generateParenthesis(n: Int) -> [String] {
        var set = Set<String>()
        
        guard n > 0 else {
            return [""]
        }
        
        for str in generateParenthesis(n - 1) {
            for (i, char) in str.characters.enumerate() {
                if char == "(" {
                    set.insert(_substring(str, 0, i + 1) + "()" + _substring(str, i + 1, str.characters.count))
                }
            }
            
            set.insert(str + "()")
        }
        
        return [String](set)
    }
    
    private func _substring(str: String, _ start: Int, _ end: Int) -> String {
        return str[str.startIndex.advancedBy(start) ..< str.startIndex.advancedBy(end)]
    }
}