/**
 * Question Link: https://leetcode.com/problems/diameter-of-binary-tree/
 * Primary idea: recursion, update globel diameter along with maxDepth 
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

class DiameterBinaryTree {
    var diameter = 0
    
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        maxDepth(root)
        
        return diameter
    }
    
    fileprivate func maxDepth(_ node: TreeNode?) -> Int {
        guard let node = node else {
            return 0
        }
        
        let (left, right) = (maxDepth(node.left), maxDepth(node.right))
        
        diameter = max(diameter, left + right)
        
        return max(left, right) + 1
    }
}