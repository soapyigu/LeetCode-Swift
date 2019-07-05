/**
 * Question Link: https://leetcode.com/problems/simplify-path/
 * Primary idea: Use a stack, normal to push, .. to pop 
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class SimplifyPath {
    func simplifyPath(_ path: String) -> String {
        var stack = [String]()

        // split
        let dirs = path.split(separator: "/")

        // add to stack
        for dir in dirs {
            if dir == "." {
                continue
            } else if dir == ".." {
                if !stack.isEmpty {
                    stack.removeLast()
                }
            } else {
                stack.append(String(dir))
            }
        }

        // pop stack and join as a string
        return "/" +  String(stack.joined(separator: "/"))
    }
}
