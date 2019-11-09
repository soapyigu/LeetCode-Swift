/**
 * Question Link: https://leetcode.com/problems/add-two-numbers/
 * Primary idea: use carry and iterate through both linked lists
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

class AddTwoNumbers {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if(l1==nil)&&(l2==nil) {
            return nil
        }

        var ll1 = l1
        var ll2 = l2

        let head = ListNode(0)
        var point = head
        var carry = 0

        while (ll1 != nil) || (ll2 != nil) || carry != 0 {
            let total = sum(lhs: ll1?.val, rhs: ll2?.val, carry: carry)
            point.val = total.sum
            carry = total.carry

            ll1 = ll1?.next
            ll2 = ll2?.next
            if ll1 != nil || ll2 != nil || carry != 0 {
                point.next = ListNode(0)
                point = point.next!
            }
        }

        return head
    }
}
