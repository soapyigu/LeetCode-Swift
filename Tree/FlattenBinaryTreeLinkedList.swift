/**
 * Question Link: https://leetcode.com/problems/flatten-binary-tree-to-linked-list/
 * Primary idea: Reset left to nil and change current node to left child every time
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

class FlattenBinaryTreeLinkedList {
    func flatten(_ root: TreeNode?) {
        helper(root)
    }
    
    private func helper(_ node: TreeNode?) -> TreeNode? {
        var node = node
        if node == nil {
            return node
        }
        if node!.left == nil && node!.right == nil {
            return node
        }
        
        let left = node!.left, right = node!.right
        node!.left = nil
        
        if let left = left {
            node!.right = left
            node = helper(left)
        }
        if let right = right {
            node!.right = right
            node = helper(right)
        }
        
        return node
    }
}