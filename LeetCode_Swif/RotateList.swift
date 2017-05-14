/**
 * Question Link: https://leetcode.com/problems/rotate-list/
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

class RotateList {
    func rotateRight(head: ListNode?, _ k: Int) -> ListNode? {
        if head == nil {
            return head
        }
    
        var prev = head
        var post = head
        let len = _getLength(head)
        var k = k % len
        
        while k > 0 {
            post = post!.next
            k -= 1
        }
        
        while post!.next != nil {
            prev = prev!.next
            post = post!.next
        }
        
        post!.next = head
        post = prev!.next
        prev!.next = nil
        
        return post
    }
    
    private func _getLength(head: ListNode?) -> Int {
        var len = 0
        var node = head
        
        while node != nil {
            len += 1
            node = node!.next
        }
        
        return len
    }
}