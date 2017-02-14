/**
 * Question Link: https://leetcode.com/problems/remove-invalid-parentheses/
 * Primary idea: Remove ) when the string is invalid, add to result when string is valid, 
 *               and do the same thing for the reversed one
 * 
 * Time Complexity: O(n!), Space Complexity: O(n)
 *
 */

class RemoveInvalidParentheses {
    func removeInvalidParentheses(_ s: String) -> [String] {
        var res = [String](), s = Array(s.characters)
        
        dfs(&res, s, 0, 0, (Character("("), Character(")")))
        
        return res
    }
    
    private func dfs(_ res: inout [String], _ s: [Character], _ lastI: Int, _ lastJ: Int, _ parens: (Character, Character)) {
        var stack = 0, s = s
        
        for i in lastI ..< s.count {
            if s[i] == parens.0 {
                stack += 1
            }
            if s[i] == parens.1 {
                stack -= 1
            }
            
            if stack < 0 {
                for j in lastJ ... i {
                    if s[j] == parens.1 && (j == lastJ || s[j - 1] != parens.1) {
                        dfs(&res, Array(s[0 ..< j] + s[j + 1 ..< s.count]), i, j, parens)
                    }
                }
                return
            }
        }
        
        if parens.0 == "(" {
            dfs(&res, s.reversed(), 0, 0, (Character(")"), Character("(")))
        } else {
            res.append(String(s.reversed()))
        }
    }
}