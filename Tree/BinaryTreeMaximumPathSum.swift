/**
 * Question Link: https://leetcode.com/problems/binary-tree-maximum-path-sum/
 * Primary idea: Iterate all tree nodes and calculate each node's maximum weight value 
 *               and update maxmum path sum along the iteration
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

class BinaryTreeMaximumPathSum {
    
    var maxValue = Int.min
    
    func maxPathSum(_ root: TreeNode?) -> Int {
        maxWeight(root)
        return maxValue
    }
    
    private func maxWeight(_ node: TreeNode?) -> Int {
        guard let node = node else {
            return 0
        }
        
        let leftMaxWeight = max(maxWeight(node.left), 0)
        let rightMaxWeight = max(maxWeight(node.right), 0)
        
        maxValue = max(maxValue, leftMaxWeight + node.val + rightMaxWeight)
        
        return node.val + max(leftMaxWeight, rightMaxWeight)
    }
}