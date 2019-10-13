/**
 * Question Link: https://leetcode.com/problems/binary-tree-level-order-traversal-ii/
 * Primary idea: use a queue to help hold TreeNode, and for each level add a new Int array
 *
 * Note: use method insertAtIndex to add each level to final result
 *
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
 
class BinaryTreeLevelOrderTraversalII {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        
        guard let root = root else {
            return res
        }
        
        var currentLevel = [root]
        
        while !currentLevel.isEmpty {
            let currentLevelVals = currentLevel.map { $0.val }
            
            // add current level vals
            res.insert(currentLevelVals, at: 0)
            
            // add next level nodes
            currentLevel = currentLevel.flatMap { [$0.left, $0.right] }.compactMap { $0 }
        }
        
        return res
    }
}
