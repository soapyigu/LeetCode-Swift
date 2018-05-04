/**
 * Question Link: https://leetcode.com/problems/kth-smallest-element-in-a-bst/
 * Primary idea: use stack to do inorder traverse and track k to find answer
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

 class KthSmallestElementBST {
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var stack = [TreeNode](), currentNode = root, k = k
        
        while !stack.isEmpty || currentNode != nil {
            if currentNode != nil {
                stack.append(currentNode!)
                currentNode = currentNode!.left
            } else {
                let node = stack.removeLast()
                k -= 1
                
                if k == 0 {
                    return node.val
                }
                
                currentNode = node.right
            }
        }
        
        return -1
    }
}