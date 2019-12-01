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
        var paths = [String]()
        
        guard let root = root else {
            return paths
        }
        
        dfs(root, &paths, "\(root.val)")
        
        return paths
    }
    
    private func dfs(_ root: TreeNode, _ paths: inout [String], _ path: String) {
        if root.left == nil && root.right == nil {
            paths.append(path)
            return
        }
        
        if let left = root.left {
            dfs(left, &paths, path + "->\(left.val)")
        }
        if let right = root.right {
            dfs(right, &paths, path + "->\(right.val)")
        }
    }
}
