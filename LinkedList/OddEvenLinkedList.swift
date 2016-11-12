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
        guard head != nil && head!.next != nil else {
            return head
        }
        
        let evenHead = head!.next
        var p = head
        var q = evenHead
        var isEndEven = true
        
        while q!.next != nil {
            let node = q!.next
            
            p!.next = node
            
            p = q
            q = node
            isEndEven = !isEndEven
        }
        
        if isEndEven {
            p!.next = evenHead
        } else {
            p!.next = nil
            q!.next = evenHead
        }
        
        return head
    }
}