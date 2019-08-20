/**
 * Question Link: https://leetcode.com/problems/odd-even-linked-list/
 * Primary idea: Prev-post two pointers; change the prev and move both at a time
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

class OddEvenLinkedList {
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        guard head != nil, head!.next != nil else {
            return head
        }
        
        var prev = head, post = head!.next, isEndEven = true
        let evenStart = post
        
        while post!.next != nil {
            prev!.next = post!.next
            
            prev = post
            post = post!.next
            
            isEndEven = !isEndEven
        }
        
        if isEndEven {
            prev!.next = evenStart
        } else {
            prev!.next = nil
            post!.next = evenStart
        }
        
        
        return head
    }
}
