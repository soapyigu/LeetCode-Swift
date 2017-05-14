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
    func levelOrderBottom(root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        var queue = [TreeNode]()
        
        if let root = root {
            queue.append(root)
        }
        
        while queue.count > 0 {
            var size = queue.count
            var level = [Int]()
            
            for _ in 1...size {
                let node = queue[0]
                queue.removeAtIndex(0)

                // add val
                level.append(node.val)

                // add TreeNodes in next level
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            res.insert(level, atIndex:0)
        }
        
        return res
    }
}