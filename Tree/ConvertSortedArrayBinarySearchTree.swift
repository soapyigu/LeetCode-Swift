/**
 * Question Link: https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/
 * Primary idea: recursion, the root of subtree should always be mid point of the subarray
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

class ConvertSortedArrayBinarySearchTree {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return sortedArrayToBST(nums, 0, nums.count - 1)
    }
    
    private func sortedArrayToBST(_ nums: [Int], _ leftIdx: Int, _ rightIdx: Int) -> TreeNode? {
        guard leftIdx <= rightIdx else {
            return nil
        }
        
        let mid = (rightIdx - leftIdx) / 2 + leftIdx
        let root = TreeNode(nums[mid])
        
        root.left = sortedArrayToBST(nums, leftIdx, mid - 1)
        root.right = sortedArrayToBST(nums, mid + 1, rightIdx)
        
        return root
    }
}