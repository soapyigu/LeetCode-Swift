/**
 * Question Link: https://leetcode.com/problems/binary-search-tree-iterator/
 * Primary idea: In order iteration using a stack.
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

class BSTIterator {
    
    var stack: [TreeNode]

    init(_ root: TreeNode?) {
        stack = [TreeNode]()
        
        loadAllLeftToStack(from: root)
    }
    
    /** @return the next smallest number */
    func next() -> Int {
        let node = stack.removeLast()
        
        loadAllLeftToStack(from: node.right)
        
        return node.val
    }
    
    /** @return whether we have a next smallest number */
    func hasNext() -> Bool {
        return !stack.isEmpty
    }
    
    private func loadAllLeftToStack(from root: TreeNode?) {
        var node = root
        
        while let current = node {
            stack.append(current)
            node = current.left
        }
    }
}

/**
 * Your BSTIterator object will be instantiated and called as such:
 * let obj = BSTIterator(root)
 * let ret_1: Int = obj.next()
 * let ret_2: Bool = obj.hasNext()
 */