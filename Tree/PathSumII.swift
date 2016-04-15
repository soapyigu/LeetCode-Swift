/**
 * Question Link: https://leetcode.com/problems/path-sum-ii/
 * Primary idea: recursion
 *
 * Note: Structs in Swift are passed by value. Classes are passed by reference. Array and Dictionaryin Swift * are implemented as structs. In order to pass the array by reference, use inout to declare the variable.
 *
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

class PathSumII {
    func pathSum(root: TreeNode?, _ sum: Int) -> [[Int]] {
        var res = [[Int]]()
        var list = [Int]()
    
        _dfs(&res, &list, root, sum)
    
        return res
    }
  
    private func _dfs(inout res: [[Int]], inout _ list:[Int], _ root: TreeNode?, _ sum: Int) {
        guard let root = root else {
            return
        }
        
        if root.left == nil && root.right == nil && root.val == sum {
            list.append(root.val)
            let dupList = list
            res.append(dupList)
            return
        }
    
        list.append(root.val)
        var dupListLeft = list
        var dupListRight = list
        _dfs(&res, &dupListLeft, root.left, sum - root.val)
        _dfs(&res, &dupListRight, root.right, sum - root.val)
    }
}