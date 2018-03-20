/**
 * Question Link: https://leetcode.com/problems/partition-list/
 * Primary idea: Tail Insert and merge two lists, use dummy to avoid edge case
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
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        let prevDummy = ListNode(0), postDummy = ListNode(0)
        var prev = prevDummy, post = postDummy
        
        var node = head
        
        while node != nil {
            let next = node!.next
            node!.next = nil

            if node!.val < x {
                prev.next = node
                prev = prev.next!
            } else {
                post.next = node
                post = post.next!
            }
            node = next
        }
        
        prev.next = postDummy.next
        
        return prevDummy.next
    }
}