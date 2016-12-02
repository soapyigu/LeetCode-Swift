/**
 * Question Link: Question Link: https://leetcode.com/problems/closest-binary-search-tree-value-ii/
 * Primary idea: Inorder traverse, compare current node val with the first one of the 
 *                 array, as it is far from closest one as usual.
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

class ClosestBinarySearchTreeValueII {
    func closestKValues(_ root: TreeNode?, _ target: Double, _ k: Int) -> [Int] {
        var res = [Int]()
        
        inorder(root, target, k, &res)
        
        return res
    }
    
    fileprivate func inorder(_ node: TreeNode?, _ target: Double, _ k: Int, _ res: inout [Int]) {
        guard let node = node else {
            return
        }
        
        inorder(node.left, target, k, &res)
        if res.count < k {
            res.append(node.val)
        } else if abs(Double(res.first!) - target) > abs(Double(node.val) - target) {
            res.removeFirst()
            res.append(node.val)
        } else {
            return
        }
        inorder(node.right, target, k, &res)
    }
}
