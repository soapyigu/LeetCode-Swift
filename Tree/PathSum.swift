/**
 * Question Link: https://leetcode.com/problems/path-sum/
 * Primary idea: recursion
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

class PathSum {
    func hasPathSum(root: TreeNode?, _ sum: Int) -> Bool {
        if root == nil {
            return false
        }
        if sum == root!.val && root!.left == nil && root!.right == nil {
            return true
        }
        
        return hasPathSum(root!.left, sum - root!.val) || hasPathSum(root!.right, sum - root!.val)
    }
}