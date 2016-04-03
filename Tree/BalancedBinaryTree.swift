/**
 * Question Link: https://leetcode.com/problems/balanced-binary-tree/
 * Primary idea: use the idea of maximum depth of a binary tree
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

class BalancedBinaryTree {
    func isBalanced(root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        
        if _checkHeight(root) == -1 {
            return false
        }
        
        return true
    }
    
    private func _checkHeight(root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        // check left and right subtree
        var leftHeight = _checkHeight(root!.left)
        if leftHeight == -1 {
            return -1
        }
        var rightHeight = _checkHeight(root!.right)
        if rightHeight == -1 {
            return -1
        }
        
        // check current
        if abs(leftHeight - rightHeight) > 1 {
            return -1
        }
        
        return max(leftHeight, rightHeight) + 1
    }
}