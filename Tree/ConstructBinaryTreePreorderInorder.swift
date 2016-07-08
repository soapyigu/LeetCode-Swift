/**
 * Question Link: https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/
 * Primary idea: Always use the first element in preorder as root, 
 *               then find that one in inorder to get left and right subtrees
 * Time Complexity: O(n), Space Complexity: O(1)
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
    func buildTree(preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        guard preorder.count > 0 && inorder.count > 0 && preorder.count == inorder.count else {
            return nil
        }
        
        return _buildHelper(preorder, 0, preorder.count - 1, inorder, 0, inorder.count - 1)
    }
    
    private func _buildHelper(preorder: [Int], _ preStart: Int, _ preEnd: Int, _ inorder: [Int], _ inStart: Int, _ inEnd: Int) -> TreeNode? {
        guard preStart <= preEnd && inStart <= inEnd else {
            return nil
        }
        
        let root = TreeNode(preorder[preStart])
        
        var mid = 0
        for i in inStart ... inEnd {
            if inorder[i] == preorder[preStart] {
                mid = i
                break
            }
        }
        
        root.left = _buildHelper(preorder, preStart + 1, preStart + mid - inStart, inorder, inStart, mid - 1)
        root.right = _buildHelper(preorder, preStart + mid - inStart + 1, preEnd, inorder, mid + 1, inEnd)
        
        return root
    }
}