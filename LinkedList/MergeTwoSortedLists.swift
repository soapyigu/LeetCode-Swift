/**
 * Question Link: https://leetcode.com/problems/merge-two-sorted-lists/
 * Primary idea: Dummy Node to traverse two lists, compare two nodes and point to the right one
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

class MergeTwoSortedLists {
    func mergeTwoLists(l1: ListNode?, _ l2: ListNode?) -> ListNode? {
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


//Iteration method
class MergeTwoSortedListsWithIteration {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1 = l1 else { return l2 }
        guard let l2 = l2 else { return l1 }

        let dummy: ListNode = ListNode(0)

        if l1.val < l2.val {
            dummy.next = l1
            dummy.next?.next = mergeTwoLists(l1.next, l2)
        } else {
            dummy.next = l2
            dummy.next?.next = mergeTwoLists(l1, l2.next)
        }

        return dummy.next
    }
}
