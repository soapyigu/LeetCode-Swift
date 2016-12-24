/**
 * Question Link: https://leetcode.com/problems/unique-binary-search-trees/
 * Primary idea: Dynamic programming, for each node as root, dp[i] += dp[j] * dp[i - j - 1]
 *
 * Time Complexity: O(n), Space Complexity: O(n)
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
 
class UniqueBinarySearchTrees {
    func numTrees(_ n: Int) -> Int {
        guard n > 1 else {
            return 1
        }
        
        var dp = Array(repeating: 0, count: n + 1)
        dp[0] = 1
        
        for i in 1 ... n {
            for j in 0 ..< i {
                dp[i] += dp[j] * dp[i - j - 1]
            }
        }
        
        return dp[n]
    }
}