/**
 * Question Link: https://leetcode.com/problems/minimum-depth-of-binary-tree/
 * Primary idea: recursion, similar as maximum depth of a binary tree, need handle edge case first
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
 
class MinimumDepthOfBinaryTree {
    func minDepth(root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        return _helper(root)
    }
    
    private func _helper(root: TreeNode?) -> Int {
        if root == nil {
            return Int.max
        }
        if root!.left == nil && root!.right == nil {
            return 1
        }
        
        return min(_helper(root!.left), _helper(root!.right)) + 1
    }
}