/**
 * Question Link: https://leetcode.com/problems/binary-tree-level-order-traversal/
 * Primary idea: use a queue to help hold TreeNode, and for each level add a new Int array
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
 
class BinaryTreeLevelOrderTraversal {
    func levelOrder(root: TreeNode?) -> [[Int]] {
        var res: [[Int]] = []
        var queue:[TreeNode] = []

        if root == nil {
            return res
        }
        
        queue.append(root!)
        
        while queue.count > 0 {
            var size: Int = queue.count
            var level: [Int] = []
            
            for i in 1...size {
                let node: TreeNode = queue[0]
                queue.removeAtIndex(0)
                
                level.append(node.val)
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            res.append(level)
        }
        
        return res
    }
}