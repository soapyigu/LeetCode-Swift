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
    func addTwoNumbers(l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1 = l1 else {return l2}
        guard let l2 = l2 else {return l1}
        
        let outputNode = ListNode((l1.val + l2.val)%10)
        if l1.val + l2.val > 9 {
            outputNode.next = addTwoNumbers(addTwoNumbers(l1.next, l2.next),
                                            ListNode(1))
        } else {
            outputNode.next = addTwoNumbers(l1.next, l2.next)
        }
        
        
        return outputNode
    }
}