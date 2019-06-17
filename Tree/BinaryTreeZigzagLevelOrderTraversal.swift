/**
 * Question Link: https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/
 * Primary idea: use a queue to help hold TreeNode, and for each level add a new Int array
 *
 * Note: use a boolean value to determine if needs to be added reversely
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
 *
 */

class BinaryTreeZigzagLevelOrderTraversal {
    func zigzagLevelOrder(root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return [[Int]]()
        }
        
        var res = [[Int]](), isReverse = false, nodeQ = [root]
        
        while !nodeQ.isEmpty {
            let currentLevel = nodeQ.map { $0.val }
            res.append(isReverse ? currentLevel.reversed() : currentLevel)
            
            isReverse = !isReverse
            
            nodeQ = nodeQ.flatMap { [$0.left, $0.right].compactMap { $0 } }
        }
        
        return res
    }
}