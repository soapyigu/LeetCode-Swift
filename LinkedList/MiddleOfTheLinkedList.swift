/**
 * Question Link: https://leetcode.com/problems/middle-of-the-linked-list/
 * Primary idea: Add all ListNodes to an array, then return the middle node.
 * Time Complexity: O(n), Space Complexity: O(n)
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
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
    
        var list = [ListNode]()
        var current = head
        
        while current != nil{
            list.append(current!)
            current = current?.next
        }
        
        return list[list.count/2]
    }
}
