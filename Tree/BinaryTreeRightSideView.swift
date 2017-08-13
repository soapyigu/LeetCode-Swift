/**
 * Question Link: https://leetcode.com/problems/binary-tree-right-side-view/
 * Primary idea: use a queue to keep TreeNode, and for each level add the last one
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
 
class BinaryTreeRightSideView {
    func rightSideView(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        var nodeQ = [TreeNode]()
        
        if let root = root {
            nodeQ.append(root)
        }
        
        while nodeQ.count > 0 {
            var size = nodeQ.count
            
            for i in 0..<size {
                let node = nodeQ.removeFirst()
                
                if i + 1 == size {
                    res.append(node.val)
                }
                
                if let left = node.left {
                    nodeQ.append(left)
                }
                if let right = node.right {
                    nodeQ.append(right)
                }
            }
        }
        
        return res
    }
}