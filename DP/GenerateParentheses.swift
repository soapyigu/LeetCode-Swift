/**
 * Question Link: https://leetcode.com/problems/generate-parentheses/
 * Primary idea: Insert left and right parentheses and ensure they are valid
 * Time Complexity: O(2^n), Space Complexity: O(n)
 *
 */

class GenerateParentheses {
    func generateParenthesis(_ n: Int) -> [String] {
        var paths = [String](), path = [Character](repeating: " ", count: 2 * n)
        
        helper(&paths, &path, n, n, 0)
        
        return paths
    }
    
    func helper(_ paths: inout [String], _ path: inout [Character], _ leftCount: Int, _ rightCount: Int, _ index: Int) {
        if leftCount < 0 || leftCount > rightCount {
            return
        }
        
        if leftCount == 0 && rightCount == 0 {
            paths.append(String(path))
            return
        }
        
        if leftCount > 0 {
            path[index] = "("
            helper(&paths, &path, leftCount - 1, rightCount, index + 1)
        }
        if rightCount > leftCount {
            path[index] = ")"
            helper(&paths, &path, leftCount, rightCount - 1, index + 1)
        }
    }
}