/**
 * Question Link: https://leetcode.com/problems/validate-binary-search-tree/
 * Primary idea: Keep min to go right and keep max to go left
 * Time Complexity: O(n), Space Complexity: O(log n)
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

class ValidateBinarySearchTree {
    func isValidBST(root: TreeNode?) -> Bool {
        return _helper(root, nil, nil)
    }
    
    private func _helper(node: TreeNode?, _ min: Int?, _ max: Int?) -> Bool {
        guard let node = node else {
            return true
        }
        
        if let min = min, root.val <= min {
            return false
        }
        if let max = max, root.val >= max {
            return false
        }
        
        return _helper(node.left, min, node.val) && _helper(node.right, node.val, max)
    }
}
