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
        func verticalOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return [[Int]]()
        }
        
        var orderToVals = [0: [root.val]], nodes = [(root, 0)]
        
        while !nodes.isEmpty {
            let size = nodes.count
            
            for _ in 0..<size {
                let (node, order) = nodes.removeFirst()
                
                if let left = node.left {
                    orderToVals[order - 1, default: []].append(left.val)
                    nodes.append((left, order - 1))
                }
                if let right = node.right {
                    orderToVals[order + 1, default: []].append(right.val)
                    nodes.append((right, order + 1))
                }
            }
        }
        
        return orderToVals.sorted { $0.key < $1.key }.map { $0.value }
    }
}