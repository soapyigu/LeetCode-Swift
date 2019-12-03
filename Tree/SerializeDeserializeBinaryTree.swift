/**
 * Question Link: https://leetcode.com/problems/serialize-and-deserialize-binary-tree/
 * Primary idea: Preorder or level order
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

# Solution 1 - Preorder
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

# Solution 2 - Level order, BFS
class SerializeDeserializeBinaryTree {
    func serialize(_ root: Node?) -> String {
        guard let root = root else {
            return ""
        }
        
        var res = "", nodes: [Node?] = [root]
        
        while !nodes.isEmpty {
            let currentLevelSize = nodes.count
            
            for _ in 0..<currentLevelSize {
                let node = nodes.removeFirst()
                
                if let node = node {
                    res.append(String(node.val))
                    
                    nodes.append(node.left)
                    nodes.append(node.right)
                } else {
                    res.append("#")
                }
            }
        }
        
        return res
    }
    
    func deserialize(_ vals: String) -> Node? {
        guard let firstVal = vals.first, let rootVal = Int(String(firstVal)) else {
            return nil
        }
        
        let root = Node(rootVal), vals = Array(vals)
        var nodes: [Node?] = [root], i = 1
        
        while !nodes.isEmpty {
            guard let node = nodes.removeFirst() else {
                continue
            }
            
            var left: Node?
            if let leftVal = Int(String(vals[i])) {
                left = Node(leftVal)
            }
            node.left = left
            nodes.append(left)
            i += 1
            
            var right: Node?
            if let rightVal = Int(String(vals[i])) {
                right = Node(rightVal)
            }
            node.right = right
            nodes.append(right)
            i += 1
        }
        
        return root
    }
}
