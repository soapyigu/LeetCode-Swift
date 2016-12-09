/**
 * Question Link: https://leetcode.com/problems/binary-tree-upside-down/
 * Primary idea: Mark left one as current node, change its left and right and 
 *               keep going to right until to the leaf
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

class BinaryTreeUpsideDown {
    func upsideDownBinaryTree(_ root: TreeNode?) -> TreeNode? {
        var parent: TreeNode?
        var node: TreeNode? = root
        var right: TreeNode?
        
        while node != nil {
            let left = node!.left
            node!.left = right
            right = node!.right
            node!.right = parent
            parent = node
            node = left
        }
        
        return parent
    }
}