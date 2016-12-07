/**
 * Question Link: https://leetcode.com/problems/merge-k-sorted-lists/
 * Primary idea: Divide and Conqure with merge two sorted lists as a helper function
 * Time Complexity: O(mlogn), m stands for the length of one list, n stands for the number of lists
 *                  Space Complexity: O(1)
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

class MergeKSortedLists {
    func mergeKLists(lists: [ListNode?]) -> ListNode? {
        guard lists.count > 0 else {
            return nil
        }
    
        var left = 0
        var right = lists.count - 1
        
        var lists = lists
        
        while right > 0 {
            left = 0
            while left < right {
                lists[left] = _mergeTwoLists(lists[left], lists[right])
                left += 1
                right -= 1
            }
        }
        
        return lists[0]
    }
    
    private func _mergeTwoLists(l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        var node = dummy
    
        var l1 = l1
        var l2 = l2
        
        while l1 != nil && l2 != nil {
            if l1!.val < l2!.val {
                node.next = l1
                l1 = l1!.next
            } else {
                node.next = l2
                l2 = l2!.next
            }
            
            node = node.next!
        }
        
        node.next = l1 ?? l2
        
        return dummy.next
    }
}