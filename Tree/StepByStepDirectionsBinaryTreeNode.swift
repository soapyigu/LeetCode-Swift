/**
 * Question Link: https://leetcode.com/problems/step-by-step-directions-from-a-binary-tree-node-to-another/
 * Primary idea: The shortest path should pass LCA. Find paths for two nodes and remove their longgest common prefix.
 * Time Complexity: O(n), Space Complexity: O(n)
 * 
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class StepByStepDirectionsBinaryTreeNode {
    func getDirections(_ root: TreeNode?, _ startValue: Int, _ destValue: Int) -> String {
        guard let root = root else {
            return ""
        }
        
        let startPath = getPath(root, startValue)
        let destPath = getPath(root, destValue)
        let len = longestCommonPrefixLen(startPath, destPath)

        return String(repeating: "U", count: startPath.count - len) + destPath.dropFirst(len)
    }
    
    private func longestCommonPrefixLen(_ s: String, _ d: String) -> Int {
        var i = 0
        let s = Array(s), d = Array(d)
        
        while i < min(s.count, d.count) {
            if s[i] != d[i] {
                break
            }
            
            i += 1
        }
        
        return i
    }
    
    private func getPath(_ parent: TreeNode, _ val: Int) -> String {       
        var queue = [(parent, "")]
        
        while !queue.isEmpty {
            let current = queue.removeFirst()
            
            if current.0.val == val {
                return current.1
            }
            
            if let left = current.0.left {
                queue.append((left, current.1 + "L"))
            }
            if let right = current.0.right {
                queue.append((right, current.1 + "R"))
            }
        }
        
        return ""
    }
}
