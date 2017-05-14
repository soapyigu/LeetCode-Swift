/**
 * Question Link: https://leetcode.com/problems/remove-duplicates-from-sorted-list/
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

class RemoveDuplicatesFromSortedList {
    func deleteDuplicates(head: ListNode?) -> ListNode? {
        guard let head = head else {
            return nil
        }
    
        var prev = head
        var curr = head.next
        
        while curr != nil {
            if prev.val != curr!.val {
                prev.next = curr
                prev = curr!
            } 
            curr = curr!.next
        }
        prev.next = nil
        
        return head
    }
}