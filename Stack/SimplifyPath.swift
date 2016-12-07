/**
 * Question Link: https://leetcode.com/problems/simplify-path/
 * Primary idea: Use a stack, normal to push, .. to pop 
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class SimplifyPath {
    func simplifyPath(_ path: String) -> String {
        let dirs = path.components(separatedBy: "/")
        var stack = [String]()
        
        for dir in dirs {
            if dir == "." {
                continue
            } else if dir == ".." {
                if !stack.isEmpty {
                    stack.removeLast()
                }
            } else {
                if dir != "" {
                    stack.append(dir)
                }
            }
        }
        
        let res = stack.reduce("") { total, dir in "\(total)/\(dir)" }
        
        return res.isEmpty ? "/" : res
    }
}