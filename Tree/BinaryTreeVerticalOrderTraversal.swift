/**
 * Question Link: https://leetcode.com/problems/binary-tree-vertical-order-traversal/
 * Primary idea: Use queues to hold TreeNode and column level, and a dictionary to 
 *               map column with its correspond TreeNode vals
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
 
class BinaryTreeVerticalOrderTraversal {
    func verticalOrder(_ root: TreeNode?) -> [[Int]] {
        var res = [[Int]](), qNodes = [TreeNode](), qVals = [Int]()
        var colVals = [Int: [Int]](), minCol = 0, maxCol = 0
    
        guard let root = root else {
            return res
        }
        
        qNodes.append(root)
        qVals.append(0)
        
        while !qNodes.isEmpty {
            let node = qNodes.removeFirst()
            let col = qVals.removeFirst()
            
            if colVals[col] != nil {
                colVals[col]!.append(node.val)
            } else {
                colVals[col] = [node.val]
            }
            
            if let left = node.left {
                qNodes.append(left)
                qVals.append(col - 1)
                minCol = min(minCol, col - 1)
            }
            if let right = node.right {
                qNodes.append(right)
                qVals.append(col + 1)
                maxCol = max(maxCol, col + 1)
            }
        }
        
        for col in minCol ... maxCol {
            res.append(colVals[col]!)
        }
        
        return res
    }
}