/**
 * Question Link: https://leetcode.com/problems/remove-invalid-parentheses/
 * Primary idea: Remove ) when the string is invalid, add to result when string is valid, 
 *               and do the same thing for the reversed one
 * 
 * Time Complexity: O(n^n), Space Complexity: O(n)
 *
 */

class RemoveInvalidParentheses {
    func removeInvalidParentheses(_ s: String) -> [String] {
        var paths = [String]()
        
        dfs(&paths, Array(s), 0, 0, ("(", ")"))
        
        return paths
    }
    
    fileprivate func dfs(_ paths: inout [String], _ s: [Character], _ lastValid: Int, _ lastRight: Int, _ parens: (Character, Character)) {
        var counter = 0, s = s
        
        for i in lastValid..<s.count {
            if s[i] == parens.0 {
                counter += 1
            } 
            if s[i] == parens.1 {
                counter -= 1
            }
            
            if counter < 0 {
                for j in lastRight...i {
                    guard s[j] == parens.1 else {
                        continue
                    }
                    guard j == 0 || s[j] != s[j - 1] || j == lastRight else {
                        continue
                    }
                    
                    dfs(&paths, Array(s[0..<j] + s[j + 1..<s.count]), i, j, parens)
                }
                // jump over invalid ones
                return
            }
        }
        
        if parens.0 == "(" {
            dfs(&paths, s.reversed(), 0, 0, (")", "("))
        } else {
            paths.append(String(s.reversed()))
        }
    }
}