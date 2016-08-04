/**
 * Question Link: https://leetcode.com/problems/maximum-depth-of-binary-tree/
 * Primary idea: recursion, return 0 when it is a leaf node
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

class MaximumDepthOfBinaryTree {
    func maxDepth(root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        return max(maxDepth(root.left), maxDepth(root.right)) + 1
    }
}