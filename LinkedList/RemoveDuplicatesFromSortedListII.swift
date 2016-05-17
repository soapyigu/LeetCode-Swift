/**
 * Question Link: https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/
 * Primary idea: Three pointers, iterate the list and only reserve right nodes, 
 *				 specially handle the last one afterwards
 *
 * Note: Swift provides "===" to compare two objects refer to the same reference
 * 
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

 class RemoveDuplicatesfromSortedListII {
    func deleteDuplicates(head: ListNode?) -> ListNode? {
        if head == nil || head!.next == nil {
            return head
        }
        
        let dummy = ListNode(0)
        dummy.next = head
        
        var node = dummy
        var prev = head
        var post = head!.next
        
        while post != nil {
            if post!.val != prev!.val && prev!.next === post{
                node.next = prev
                node = prev!
                prev = post!
                post = post!.next
            } else {
                if post!.val != prev!.val {
                    prev = post!
                    post = post!.next
                } else {
                    post = post!.next
                }
            }
        }
        
        if prev!.next != nil {
            node.next = nil
        } else {
            node.next = prev
        }
        
        return dummy.next
    }
}