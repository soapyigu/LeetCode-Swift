/**
 * Question Link: https://leetcode.com/problems/binary-tree-inorder-traversal/
 * Primary idea: Use a stack to help iterate the tree
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
class InorderTraversal {
    func inorderTraversal(root: TreeNode?) -> [Int] {
        var stack = [TreeNode]()
        var res = [Int]()
        var node = root
        
        while !stack.isEmpty || node != nil {
            if node != nil {
                stack.append(node!)
                node = node!.left
            } else {
                node = stack.removeLast()
                res.append(node!.val)
                node = node!.right
            }
        }
        
        return res
    }
}