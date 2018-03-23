/**
 * Question Link: https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree
 * Primary idea: Get midpoint of array, make it root, then recursively divide array into left and right subtrees
 * Time Complexity: O(n), Space Complexity: O(1)
 * 
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class SortedArrayToBST {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return _sortedArrayToBST(nums, 0, nums.count - 1)
    }
    
    func _sortedArrayToBST(_ nums: [Int], _ start: Int, _ end: Int) -> TreeNode? {
        
        guard !(start > end) else {
            return nil
        }
        
        let mid = (start + end) / 2
        
        let root = TreeNode(nums[mid])
        
        root.left = _sortedArrayToBST(nums, start, mid-1)
        root.right = _sortedArrayToBST(nums, mid+1, end)
        
        return root
    }
}
