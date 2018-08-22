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
        var res = [[Int]](), queue = [TreeNode](), isReverse = false
        
        if let root = root {
            queue.append(root)
        }
        
        while !queue.isEmpty {
            let size = queue.count
            var level = [Int]()
            
            for _ in 0..<size {
                let node = queue.removeFirst()
                
                // add val
                level.insert(node.val, at: isReverse ? 0 : level.count) 
                
                // add TreeNodes in next level
                if let left = node.left {
                    queue.append(left)
                } 
                if let right = node.right {
                    queue.append(right)
                }
            }
            
            res.append(level)
            isReverse = !isReverse
        }
        
        return res
    }
}