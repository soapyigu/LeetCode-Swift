/**
 * Question Link: https://leetcode.com/problems/simplify-path/
 * Primary idea: Use a stack, normal to push, .. to pop 
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class SimplifyPath {
    func simplifyPath(path: String) -> String {
        var res = ""
        var stack = [String]()
        let paths = path.characters.split {$0 == "/"}.map(String.init)
        
        for path in paths {
            var path = path.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        
            guard path != "." else {
                continue
            }
            
            if path == ".."  {
                if (stack.count > 0) {
                    stack.removeLast()
                }
            } else if path.characters.count > 0 {
                stack.append(path)
            }
        }
        
        for str in stack {
            res += "/"
            res += str
        }
        
        return res.isEmpty ? "/" : res
    }
}