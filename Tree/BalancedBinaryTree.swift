/**
 * Question Link: https://leetcode.com/problems/balanced-binary-tree/
 * Primary idea: use the idea of maximum depth of a binary tree
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

class BalancedBinaryTree {
    func isBalanced(_ root: TreeNode?) -> Bool {
        return checkHeight(root) != -1
    }
    
    private func checkHeight(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        let left = checkHeight(root.left), right = checkHeight(root.right)
        
        if left == -1 || right == -1 {
            return -1
        }
        
        if abs(left - right) > 1 {
            return -1
        }
        
        return max(left, right) + 1
    }
}