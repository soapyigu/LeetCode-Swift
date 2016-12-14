/**
 * Question Link: https://leetcode.com/problems/path-sum-iii/
 * Primary idea: Get path number of every node as root while iterating the tree
 * Time Complexity: O(n^2), Space Complexity: O(1)
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

class PathSumIII {
    func pathSum(_ root: TreeNode?, _ sum: Int) -> Int {
        guard let root = root else {
            return 0
        }
        
        var res = totalPaths(root, sum)
        
        let left = pathSum(root.left, sum)
        let right = pathSum(root.right, sum)
        
        return res + left + right
    }
    
    func totalPaths(_ root: TreeNode?, _ sum: Int) -> Int {
        guard let root = root else {
            return 0
        }
        
        var res = 0
        if sum == root.val {
            res += 1
        }
        
        res += totalPaths(root.left, sum - root.val)
        res += totalPaths(root.right, sum - root.val)
        
        return res
    }
}