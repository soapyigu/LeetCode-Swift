/**
 * Question Link: https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/
 * Primary idea: Iterate the list, jump over duplicates by replacing next with next.next
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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head == nil || head!.next == nil {
            return head
        }
        
        let dummy = ListNode(0)
        dummy.next = head
        var node = dummy
        
        while node.next != nil && node.next!.next != nil {
            if node.next!.val == node.next!.next!.val {
                let val = node.next!.val
                while node.next != nil && node.next!.val == val {
                    node.next = node.next!.next
                }
            } else {
                node = node.next!
            }
        }
        
        return dummy.next
    }
}