/**
 * Question Link: https://leetcode.com/problems/recover-binary-search-tree/
 * Primary idea: Morris Traversal (In-order)
 * The key is to construct the connection between child & parent
 * 1) If cur.left == nil:
 *      - Output cur.val
 *      - Set cur = cur.right
 * 2) If cur.left != nil:
 *      - Find the precursor of cur, precursor
 *      i. If precursor.right == nil:
 *          - Set precursor.right = cur
 *          - Set cur = cur.left
 *      ii. If precursor.right != nil (which means precursor.right === cur):
 *          - Set precursor.right = nil (Recover the structure of original tree)
 *          - Output cur.val
 *          - Set cur = cur.right
 * 3) Repeat 1) & 2) until cur == nil
 * Time Complexity: O(n), Space Complexity: O(1)
 * Recommand Reading: http://www.cnblogs.com/AnnieKim/archive/2013/06/15/morristraversal.html
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

class RecoverBinarySearchTree {
    func recoverTree(_ root: TreeNode?) {
        var pre: TreeNode?  // Store the pre-node in the sorted list
        var first: TreeNode?
        var second: TreeNode?
        
        // Morris Traversal
        var cur = root
        var precursor: TreeNode?
        while cur != nil {
            // 2) If cur.left != nil:
            if cur!.left != nil {
                // Find the precursor of cur
                precursor = cur!.left
                while precursor!.right != nil && precursor!.right !== cur {
                    precursor = precursor!.right
                }
                // 2)ii. If the connection already existed
                if precursor!.right === cur {
                    // First time we meet pre.val >= cur.val must be the first node
                    // But the second node need to be the last time we meet pre.val >= cur.val
                    // e.g 1, 4, 3, 5, 6 v.s 1, 5, 4, 3, 6
                    if pre != nil && pre!.val >= cur!.val {
                        if first == nil {
                            first = pre
                            second = cur
                        } else {
                            second = cur
                        }
                    }
                    pre = cur!
                    precursor!.right = nil
                    cur = cur!.right
                // 2)i. Construct the connection
                } else {
                    precursor!.right = cur
                    cur = cur!.left
                }
            // 1) If cur.left == nil:
            } else {
                if pre != nil && pre!.val >= cur!.val {
                    if first == nil {
                        first = pre
                        second = cur
                    } else {
                        second = cur
                    }
                }
                pre = cur!
                cur = cur!.right
            }
        }
        
        // Swap the 2 nodes
        if first != nil && second != nil {
            swap(&first!.val, &second!.val)
        }
    }
}
