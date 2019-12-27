/**
 * Question Link: https://leetcode.com/problems/nested-list-weight-sum-ii/
 * Primary idea: Track depth for every number and max depth overall
 * Time Complexity: O(n), Space Complexity: O(n)
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

 class NestedListWeightSumII {
    func depthSumInverse(_ nestedList: [NestedInteger]) -> Int {
        var numDepth = [(Int, Int)](), maxDepth = 0
        
        helper(nestedList, 1, &maxDepth, &numDepth)
        
        return numDepth.reduce(0) { (total, numDepth) in total + numDepth.0 * (maxDepth - numDepth.1 + 1) }
    }
    
    private func helper(_ nestedList: [NestedInteger], _ depth: Int, _ maxDepth: inout Int, _ numDepth: inout [(Int, Int)]) {
        maxDepth = max(depth, maxDepth)
        
        for nestedInt in nestedList {
            if nestedInt.isInteger() {
                numDepth.append((nestedInt.getInteger(), depth))
            } else {
                helper(nestedInt.getList(), depth + 1, &maxDepth, &numDepth)
            }
        }
    }
}

