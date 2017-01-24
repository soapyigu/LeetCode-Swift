/**
 * Question Link: https://leetcode.com/problems/reverse-nodes-in-k-group/
 * Primary idea: Reverse one group during one loop. Construct a reversed group from back to forth.
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

class ReverseNodesInKGroup {
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        let dummy = ListNode(0)
        dummy.next = head
        
        var prev = dummy                             // prev = A
        while prev.next != nil {                     // A->B->C->D->E => A->D->C->B->E
            var groupTail : ListNode? = prev
            for _ in 1...k {
                groupTail = groupTail?.next
            }
            guard groupTail != nil else {            // groupTail = D
                break
            }
            
            let nextGroupHead = groupTail!.next      // nextGroupHead = E
            var last = nextGroupHead                 // last = E
            var current : ListNode? = prev.next!     // current = B
            while current != nil && current !== nextGroupHead {
                let next = current!.next             // next = C
                current!.next = last                 // B -> E
                last = current                       // last = B
                current = next                       // current = C
            }
            
            groupTail = prev.next
            prev.next = last
            prev = groupTail!
        }
        
        return dummy.next
    }
}
