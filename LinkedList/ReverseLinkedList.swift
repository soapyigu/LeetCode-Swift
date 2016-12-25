/**
 * Question Link: https://leetcode.com/problems/reverse-linked-list/
 * Primary idea: Use two helper nodes, traverse the linkedlist and change point direction each time
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

class ReverseLinkedList {
    func reverseList(head: ListNode?) -> ListNode? {
        var temp: ListNode?
        var first = head
        
        while first != nil {
            let second = first!.next
            
            first!.next = temp
            
            temp = first
            first = second
        }
        
        return temp
    }

    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let h = head, let next = h.next else {
            return head
        }
  
        let node = reverseList(next)
  
        next.next = h
        h.next = nil
  
        return node
    }
}