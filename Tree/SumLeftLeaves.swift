/**
 * Question Link: https://leetcode.com/problems/sum-of-left-leaves/
 * Primary idea: Recursion. Go to left and right and add to res if it is left leaf.
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

class SumLeftLeaves {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        var res = 0
        helper(root.left, true, &res)
        helper(root.right, false, &res)
        
        return res
    }
    
    private func helper(_ node: TreeNode?, _ isLeft: Bool, _ res: inout Int) {
        guard let node = node else {
            return
        }
        if node.left == nil && node.right == nil && isLeft {
            res += node.val
        }
        
        helper(node.left, true, &res)
        helper(node.right, false, &res)
    }
}