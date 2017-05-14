/**
 * Question Link: https://leetcode.com/problems/remove-nth-node-from-end-of-list/
 * Primary idea: Runner Tech
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

class RemoveNthFromEnd {
    func removeNthFromEnd(head: ListNode?, _ n: Int) -> ListNode? {
        guard let head = head else {
            return nil
        }
    
        let dummy = ListNode(0)
        dummy.next = head
        var prev: ListNode? = dummy
        var post: ListNode? = dummy
        
        // move post
        for _ in 0 ..< n {
            if post == nil {
                break
            }
            
            post = post!.next
        }
        
        // move prev and post at the same time
        while post != nil && post!.next != nil {
            prev = prev!.next
            post = post!.next
        }
        
        prev!.next = prev!.next!.next
        
        return dummy.next
    }
}