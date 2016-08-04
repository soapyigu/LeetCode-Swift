/**
 * Question Link: https://leetcode.com/problems/invert-binary-tree/
 * Primary idea: recursion, swap left and right of current node each time
 * Time Complexity: O(n), Space Complexity: O(n)
 * (The Space Complexity should be O(n) : Since `invertTree` is a recursive call, it need to maintain stack for each subcall.)
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

class InvertBinaryTree {
    func invertTree(root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }
        
        var temp = root.left 
        root.left = root.right
        root.right = temp
        
        invertTree(root.left)
        invertTree(root.right)
        
        return root
    }
}
