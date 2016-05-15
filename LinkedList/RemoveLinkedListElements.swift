/**
 * Question Link: https://leetcode.com/problems/remove-linked-list-elements/
 * Primary idea: Two pointers, iterate the list and only reserve right nodes
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
    func removeElements(head: ListNode?, _ val: Int) -> ListNode? {
        var dummy = ListNode(0)
        dummy.next = head
        
        var prev = dummy
        var curr = head
        
        while curr != nil {
            if curr!.val == val {
                curr = curr!.next
            } else {
                prev.next = curr
                prev = curr!
                curr = curr!.next
            }
        }
        // remember to handle the last one
        prev.next = nil
        
        return dummy.next
    }
}