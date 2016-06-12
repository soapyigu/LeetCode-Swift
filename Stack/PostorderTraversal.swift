/**
 * Question Link: https://leetcode.com/problems/binary-tree-postorder-traversal/
 * Primary idea: Use a stack to help iterate the tree, go right and insert at head
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

class PostorderTraversal {
    func postorderTraversal(root: TreeNode?) -> [Int] {
        var res = [Int]()
        var stack = [TreeNode]()
        var node = root
        
        while !stack.isEmpty || node != nil {
            if node != nil {
                res.insert(node!.val, atIndex: 0)
                stack.append(node!)
                node = node!.right
            } else {
                node = stack.removeLast().left
            }
        }
        
        return res
    }
}