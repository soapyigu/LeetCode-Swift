/**
 * Question Link: https://leetcode.com/problems/serialize-and-deserialize-binary-tree/
 * Primary idea: Preorder
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

 class SerializeDeserializeBinaryTree {
    func serialize(_ root: Node?) -> String {
        guard let root = root else {
            return "#"
        }
        
        return String(root.val) + serialize(root.left) + serialize(root.right)
    }
    
    func deserialize(_ vals: inout String) -> Node? {
        guard let rootVal = Int(String(vals.removeFirst())) else {
            return nil
        }
        
        let root = Node(rootVal)
        root.left = deserialize(&vals)
        root.right = deserialize(&vals)
        
        return root
    }
}