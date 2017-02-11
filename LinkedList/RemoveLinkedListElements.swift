/**
 * Question Link: https://leetcode.com/problems/remove-linked-list-elements/
 * Primary idea: Iterate the list, jump over vals by replacing next with next.next
 * Time Complexity: O(n), Space Complexity: O(1)
 *
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

class RemoveLinkedListElements {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let dummy = ListNode(0)
        dummy.next = head
        var node = dummy
        
        while node.next != nil {
            if node.next!.val == val {
                node.next = node.next!.next
            } else {
                node = node.next!
            }
        }
        
        return dummy.next
    }
}