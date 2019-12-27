/**
 * Question Link: https://leetcode.com/problems/nested-list-weight-sum/
 * Primary idea: Track depth and caculate value at each level
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 * // This is the interface that allows for creating nested lists.
 * // You should not implement it, or speculate about its implementation
 * class NestedInteger {
 *     // Return true if this NestedInteger holds a single integer, rather than a nested list.
 *     public func isInteger() -> Bool
 *
 *     // Return the single integer that this NestedInteger holds, if it holds a single integer
 *     // The result is undefined if this NestedInteger holds a nested list
 *     public func getInteger() -> Int
 *
 *     // Set this NestedInteger to hold a single integer.
 *     public func setInteger(value: Int)
 *
 *     // Set this NestedInteger to hold a nested list and adds a nested integer to it.
 *     public func add(elem: NestedInteger)
 *
 *     // Return the nested list that this NestedInteger holds, if it holds a nested list
 *     // The result is undefined if this NestedInteger holds a single integer
 *     public func getList() -> [NestedInteger]
 * }
 */
 
class NestedListWeightSum {
    func depthSum(nestedList: [NestedInteger]) -> Int {
        return _helper(nestedList, 1)
    }
    
    private func _helper(nestedList: [NestedInteger], _ depth: Int) -> Int {
        var res = 0
        
        for nestedInt in nestedList {
            if nestedInt.isInteger() {
                res += nestedInt.getInteger() * depth
            } else {
                res += _helper(nestedInt.getList(), depth + 1)
            }
        }
        
        return res
    }
}