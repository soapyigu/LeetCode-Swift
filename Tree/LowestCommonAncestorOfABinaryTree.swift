/**
 * Question Link: https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/
 * Primary idea: Bottoms up traversal and compare root with p and q
 * Time Complexity: O(n), Space Complexity: O(1)
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

class LowestCommonAncestorOfABinaryTree {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        if root === p || root === q {
            return root
        }
        let leftNode = lowestCommonAncestor(root.left, p, q)
        let rightNode = lowestCommonAncestor(root.right, p, q)
        if leftNode != nil, rightNode != nil {
            return root
        }
        return leftNode ?? rightNode
    }
}
