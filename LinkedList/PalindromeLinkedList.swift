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
    func isPalindrome(_ head: ListNode?) -> Bool {
        var slow = head, fast = head, dummy: ListNode? = nil
        
        // reverse first half
        while fast != nil && fast!.next != nil {
            fast = fast!.next!.next
            
            let nextNode = slow!.next
            
            slow!.next = dummy
            
            dummy = slow
            slow = nextNode
        }
        
        // go to the starting point when length of list is odd
        if fast != nil {
            if slow == nil {
                return true
            }
            slow = slow!.next
        }
        
        // compare reversed first and second half
        while slow != nil {
            if slow!.val != dummy!.val {
                return false
            } else {
                slow = slow!.next
                dummy = dummy!.next
            }
        }
        
        return true
    }
}
