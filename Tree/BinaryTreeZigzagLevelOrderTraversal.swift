/**
 * Question Link: https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/
 * Primary idea: use a queue to help hold TreeNode, and for each level add a new Int array
 *
 * Note: use a boolean value to determine if needs to be added reversely
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
        var res: [[Int]] = []
        var queue: [TreeNode] = []
        var isOdd: Bool = false
        
        if let root = root {
            queue.append(root)
        }
        
        while queue.count > 0 {
            var size: Int = queue.count
            var level: [Int] = []
            
            for _ in 1...size {
                let node: TreeNode = queue[0]
                queue.removeAtIndex(0)
                
                // add val
                if isOdd {
                    level.insert(node.val, atIndex: 0) 
                } else {
                    level.append(node.val)
                }
                
                // add TreeNodes in next level
                if let left = node.left {
                    queue.append(left)
                } 
                if let right = node.right {
                    queue.append(right)
                }
            }
            
            res.append(level)
            isOdd = !isOdd
        }
        
        return res
    }
}