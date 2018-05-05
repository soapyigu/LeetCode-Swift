/**
 * Question Link: https://leetcode.com/problems/house-robber-iii/
 * Primary idea: Using two sums to track rob sum starting from current node or not, 
 *				 compare and get the maximum one
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

 class HouseRobberIII {
    func rob(_ root: TreeNode?) -> Int {
        let (robRoot, notRobRoot) = helper(root)
        
        return max(robRoot, notRobRoot)
    }
    
    fileprivate func helper(_ node: TreeNode?) -> (Int, Int) {
        guard let node = node else {
            return (0, 0)
        }
        
        let (robLeft, notRobLeft) = helper(node.left)
        let (robRight, notRobRight) = helper(node.right)
        
        let robNode = notRobLeft + notRobRight + node.val
        let notRobNode = max(robLeft, notRobLeft) + max(robRight, notRobRight)
        
        return (robNode, notRobNode)
    }
}