/**
 * Question Link: https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/
 * Primary idea: Always use the first element in preorder as root, 
 *               then find that one in inorder to get left and right subtrees
 * Time Complexity: O(nlogn), Space Complexity: O(1)
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

class ConstructBinaryTreePreorderInorder {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        guard preorder.count == inorder.count else {
            return nil
        }
        
        return _buildHelper(preorder, 0, preorder.count - 1, inorder, 0, inorder.count - 1)
    }
    
    private func _buildHelper(_ preorder: [Int], _ preStart: Int, _ preEnd: Int, _ inorder: [Int], _ inStart: Int, _ inEnd: Int) -> TreeNode? {
        guard preStart <= preEnd && inStart <= inEnd else {
            return nil
        }
        
        guard let rootIndex = inorder.firstIndex(of: preorder[preStart]) else {
            return nil
        }
        let root = TreeNode(preorder[preStart])
        
        root.left = _buildHelper(preorder, preStart + 1, preStart + rootIndex - inStart, inorder, inStart, rootIndex - 1)
        root.right = _buildHelper(preorder, preStart + rootIndex - inStart + 1, preEnd, inorder, rootIndex + 1, inEnd)
        
        return root
    }
}
