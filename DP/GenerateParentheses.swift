/**
 * Question Link: https://leetcode.com/problems/generate-parentheses/
 * Primary idea: Insert left and right parentheses and ensure they are valid
 * Time Complexity: O(2^n), Space Complexity: O(n)
 *
 */

class GenerateParentheses {
    func generateParenthesis(_ n: Int) -> [String] {
        guard n > 0 else {
            return [String]()
        }
        
        var paths = [String](), path = ""
        
        dfs(&paths, path, n, n)
        
        return paths
    }
    
    private func dfs(_ paths: inout [String], _ path: String, _ leftRemaining: Int, _ rightRemaining: Int) {
        if rightRemaining == 0 {
            paths.append(path)
            return
        }
        
        if leftRemaining > 0 {
            dfs(&paths, path + "(", leftRemaining - 1, rightRemaining)
        }
        if rightRemaining > leftRemaining {
            dfs(&paths, path + ")", leftRemaining, rightRemaining - 1)
        }
    }
}
