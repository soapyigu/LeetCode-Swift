/**
 * Question Link: https://leetcode.com/problems/swap-nodes-in-pairs/
 * Primary idea: Three Pointers, each time change pointers' directions 
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

class SwapNodesInPairs {
    func swapPairs(head: ListNode?) -> ListNode? {
        if head == nil || head!.next == nil {
            return head
        }
    
        let dummy = ListNode(0)
        dummy.next = head
        var prev = dummy
        var fir = dummy.next
        var sec = fir!.next
        
        while sec != nil {
            let next = sec!.next
            
            prev.next = sec
            sec!.next = fir
            fir!.next = next
           
            if next == nil {
                break
            }
            prev = fir!
            fir = next
            sec = next!.next
        }
        
        return dummy.next
    }
}