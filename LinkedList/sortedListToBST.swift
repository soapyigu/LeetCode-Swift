/**
 * Question Link: https://leetcode.com/problems/convert-sorted-list-to-binary-search-tree/
 * Primary idea: Convert the linked list to array, handle array using Divide and Conqure
 * Time Complexity Per Action: O(N), Space Complexity: O(N)
 *
 */

 /**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
/**
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
class Solution {
    func sortedListToBST(_ head: ListNode?) -> TreeNode? {
        var sortedArr: [Int] = []

        var cur = head
        while cur != nil {
            sortedArr.append(cur!.val)
            cur = cur!.next
        }

        return _helper(sortedArr, 0, sortedArr.count - 1)
    }

    private func _helper(_ sortedArr: [Int], _ left: Int, _ right: Int) -> TreeNode? {
        guard left <= right else { return nil }

        let mid = left + (right - left) >> 1

        let root = TreeNode(sorted[mid])

        root.left = _helper(sortedArr, left, mid - 1)
        root.right = _helper(sortedArr, mid + 1, right)

        return root
    }
}