/**
 * Question Link: https://leetcode.com/problems/closest-binary-search-tree-value/
 * Primary idea: update closest value, and choose to go left or right depends on 
 *               the comparation between node.val and target
 *
 * Note: different data types of vars cannot operate together, e.g. Int and Double 
 * Time Complexity: O(logn), Space Complexity: O(1)
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

class ClosestBinarySearchTreeValue {
    func closestValue(root: TreeNode?, _ target: Double) -> Int {
        guard let root = root else {
            return Int(target)
        }
        
        return _helper(root, target, root.val)
    }
    
    private func _helper(node: TreeNode?, _ target: Double, _ closest: Int) -> Int {
        if let node = node {
            var closest = closest
            if abs(target - Double(node.val)) < abs(target - Double(closest)) {
                closest = node.val
            }
            if Double(node.val) < target {
                return _helper(node.right, target, closest)
            } else {
                return _helper(node.left, target, closest)
            }
        }
        
        return closest
    }
}