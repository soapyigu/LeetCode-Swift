/**
 * Question Link: https://leetcode.com/problems/binary-tree-paths/
 * Primary idea: Classic DFS problem, add the path to paths when the node is leaf
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

 class BinaryTreePaths {
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        var path = [Character](), paths = [String]()
        
        dfs(root, &path, &paths)
        
        return paths
    }
    
    fileprivate func dfs(_ root: TreeNode?, _ path: inout [Character], _ paths: inout [String]) {
        guard let root = root else {
            return
        }
        
        append(&path, root)
        
        if root.left == nil && root.right == nil {
            paths.append(String(path))
            return
        }
        
        var pathLeft = path, pathRight = path
        
        dfs(root.left, &pathLeft, &paths)
        dfs(root.right, &pathRight, &paths)
    }
    
    fileprivate func append(_ path: inout [Character], _ node: TreeNode) {
        if !path.isEmpty {
            path.append(Character("-"))
            path.append(Character(">"))
        }
        
        path += Array(String(node.val))
    }
}