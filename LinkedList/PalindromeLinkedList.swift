/**
 * Question Link: https://leetcode.com/problems/palindrome-linked-list/
 * Primary idea: Runner tech, reverse the first half linkedlist, then compare it to the next half
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

class PalindromeLinkedList {
    func isPalindrome(head: ListNode?) -> Bool {
        guard head != nil else {
            return true
        }
    
        var slow = head
        var fast = head
        var prev: ListNode?
        var post = slow!.next
        
        while fast != nil && fast!.next != nil {
            fast = fast!.next!.next
            
            slow!.next = prev
            prev = slow
            slow = post
            post = post!.next
        }
        
        if fast != nil {
            slow = post
        }
        
        while prev != nil {
            if prev!.val != slow!.val {
                return false
            }
            
            prev = prev!.next
            slow = slow!.next
        }
        
        return true
    }
}