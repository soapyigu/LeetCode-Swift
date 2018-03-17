/**
 * Question Link: https://leetcode.com/problems/path-sum-ii/
 * Primary idea: recursion
 *
 * Note: Structs in Swift are passed by value. Classes are passed by reference. Array and Dictionaryin Swift * are implemented as structs. In order to pass the array by reference, use inout to declare the variable.
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

class PathSumII {
    func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
        var paths = [[Int]](), path = [Int]()
        
        dfs(root, sum, &paths, &path)
        
        return paths
    }
    
    fileprivate func dfs(_ root: TreeNode?, _ sum: Int, _ paths: inout [[Int]], _ path: inout [Int]) {
        guard let root = root else {            
            return
        }
        
        path.append(root.val)
        
        if root.val == sum && root.left == nil && root.right == nil {
            paths.append(path)
            return
        }
        
        var pathLeft = path, pathRight = path
        
        dfs(root.left, sum - root.val, &paths, &pathLeft)
        dfs(root.right, sum - root.val, &paths, &pathRight)
    }
}