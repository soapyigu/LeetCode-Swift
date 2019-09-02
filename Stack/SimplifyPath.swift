/**
 * Question Link: https://leetcode.com/problems/simplify-path/
 * Primary idea: Use a stack, normal to push, .. to pop 
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class SimplifyPath {
    func simplifyPath(_ path: String) -> String {
        var directories = [String]()
        let components = path.split(separator: "/")
        for component in components {
            switch component {
            case "": break // do nothing
            case ".": break // do nothing, pointing to the current directory
            case "..":
                directories.popLast() // if empty, does nothing
            default:
                directories.append(String(component))
            }
        }
        return "/" + String(directories.joined(separator: "/"))
    }
}
