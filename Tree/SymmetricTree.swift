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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }
        
        return isSymmetricHelper(root.left, root.right)   
    }
    
    private func isSymmetricHelper(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        if left == nil && right == nil {
            return true
        }
        
        if let left = left, let right = right, left.val == right.val {
            return isSymmetricHelper(left.left, right.right) && isSymmetricHelper(left.right, right.left)
        } else {
            return false
        }
    }
}