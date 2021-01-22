/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func pseudoPalindromicPaths (_ root: TreeNode?) -> Int {
        var count = 0
        goPath(Box(node: root!, path: [root!.val]), &count)
        return count
    }
    
    func goPath(_ box: Box, _ count: inout Int) {
        if box.node.left == nil && box.node.right == nil {
            if box.path.count < 2 { count += 1 }
            return
        }
        
        if box.node.left != nil {
            var lBox = box
            let lVal = lBox.node.left!.val
            if lBox.path.contains(lVal) {
                lBox.path.remove(lVal)
            } else {
                lBox.path.insert(lVal)
            }
            lBox.node = lBox.node.left!
            goPath(lBox, &count)
        }
        
        if box.node.right != nil {
            var rBox = box
            let rVal = rBox.node.right!.val
            if rBox.path.contains(rVal) {
                rBox.path.remove(rVal)
            } else {
                rBox.path.insert(rVal)
            }
            rBox.node = rBox.node.right!
            goPath(rBox, &count)
        }
    }
    
    struct Box {
        var node: TreeNode
        var path: Set<Int>
    }
}