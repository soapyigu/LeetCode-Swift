/**
 * Question Link: https://leetcode.com/problems/partition-list/
 * Primary idea: Tail Insert and merge two lists
 *
 * Note: Swift provides "!==" to determine two objects refer to the same reference
 * 
 * Time Complexity: O(n), Space Complexity: O(1)
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

class PartitionList {
    func partition(head: ListNode?, _ x: Int) -> ListNode? {
        let prevDummy = ListNode(0)
        var prev: ListNode? = prevDummy
        let postDummy = ListNode(0)
        var post: ListNode? = postDummy
        
        var node = head
        
        while node != nil {
            if node!.val < x {
                prev!.next = node
                prev = prev!.next
            } else {
                post!.next = node
                post = post!.next
            }
            
            node = node!.next
        }
        
        post!.next = nil
        prev!.next = postDummy.next
        
        return prevDummy.next
    }
}