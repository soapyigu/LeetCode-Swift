/**
 * Question Link: https://leetcode.com/problems/symmetric-tree/
 * Primary idea: recursion
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
 *
 */
 
class SymmetricTree {
    func isSymmetric(root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }
        return _helper(root.left, root.right)
    }
    
    func _helper(p: TreeNode?, _ q:TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }
        if p == nil || q == nil || p!.val != q!.val {
            return false
        }
        return _helper(p!.left, q!.right) && _helper(p!.right, q!.left)
    }
}