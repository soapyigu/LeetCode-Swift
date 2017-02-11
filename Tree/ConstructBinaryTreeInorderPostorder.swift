/**
 * Question Link: https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/
 * Primary idea: Always use the last element in postorder as root, 
 *               then find that one in inorder to get left and right subtrees
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

class ConstructBinaryTreeInorderPostorder {
    func buildTree(inorder: [Int], _ postorder: [Int]) -> TreeNode? {
        guard inorder.count > 0 && postorder.count > 0 && inorder.count == postorder.count else {
            return nil
        }
        
        return _buildHelper(inorder, 0, inorder.count - 1, postorder, 0, postorder.count - 1)
    }
    
    private func _buildHelper(inorder: [Int], _ inStart: Int, _ inEnd: Int, _ postorder: [Int], _ postStart: Int, _ postEnd: Int) -> TreeNode? {
        guard inStart <= inEnd && postStart <= postEnd else {
            return nil
        }
        
        let root = TreeNode(postorder[postEnd])
        
        var mid = 0
        for i in inStart ... inEnd where inorder[i] == root.val {
            mid = i
            break
        }
        
        root.left = _buildHelper(inorder, inStart, mid - 1, postorder, postStart, mid - 1 - inStart + postStart)
        root.right = _buildHelper(inorder, mid + 1, inEnd, postorder, mid - inStart + postStart, postEnd - 1)
        
        return root
    }
}