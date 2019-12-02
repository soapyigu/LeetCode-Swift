/**
 * Question Link: https://leetcode.com/problems/serialize-and-deserialize-n-ary-tree/
 * Primary idea: Preorder
 * Time Complexity: O(n), Space Complexity: O(n)
 * 
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var children: [TreeNode]

 *     public init(_ val: Int) {
 *         self.val = val
 *         self.children = [TreeNode]()
 *     }
 * }
 */

class SerializeDeserializeNAryTree {
    func serialize(_ root: Node?) -> String {
        guard let root = root else {
            return ""
        }
        
        return String(root.val) + String(root.children.count) + root.children.map { serialize($0) }.joined()
    }
    
    func deserialize(_ vals: inout String) -> Node? {
        guard let rootVal = Int(String(vals.removeFirst())) else {
            return nil
        }
        
        let root = Node(rootVal), size = String(vals.removeFirst())
        
        for _ in 0..<Int(size)! {
            if let child = deserialize(&vals) {
                root.children.append(child)
            }
        }
        
        return root
    }
}