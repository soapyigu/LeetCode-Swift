/**
 * Question Link: https://leetcode.com/problems/same-tree/
 * Primary idea: recursion
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 * Copyright © 2016 YiGu. All rights reserved.
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

class SameTree {
    func isSameTree(p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }
        if p == nil || q == nil || p!.val != q!.val {
            return false
        }
    
        return isSameTree(p!.left, q!.left) && isSameTree(p!.right, q!.right)
    }
}