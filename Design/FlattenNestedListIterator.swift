/**
 * Question Link: https://leetcode.com/problems/flatten-nested-list-iterator/
 * Primary idea I: Use a stack to store nested list reversely. 
 *                 Every time pop a element and push back until it is an integer.
 * Time Complexity I: next - O(1), hasNext - O(n), Space Complexity I: O(n)
 *
 * Primary idea II: Flatten the nested list at very first.
 * Time Complexity II: next - O(1), hasNext - O(1), Space Complexity II: O(n)
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

// Option I
class NestedIteratorI {

    private var stack: [NestedInteger]

    init(_ nestedList: [NestedInteger]) {
        stack = nestedList.reversed()
    }
    
    func next() -> Int {
        return stack.removeLast().getInteger()
    }
    
    func hasNext() -> Bool {
        while !stack.isEmpty {
            var nestedInteger = stack.removeLast()
            
            if nestedInteger.isInteger() {
                stack.append(nestedInteger)
                return true
            } else {
                for nestedInt in nestedInteger.getList().reversed() {
                    stack.append(nestedInt)
                }
            }
        }
        
        return false
    }
}

// Option II
class NestedIteratorII {

    private var list: [Int]
    private var index: Int

    init(_ nestedList: [NestedInteger]) {
        list = [Int]()
        index = 0
        
        flatten(nestedList)
    }
    
    func next() -> Int {
        let current = list[index]
        index += 1
        return current
    }
    
    func hasNext() -> Bool {
        return index < list.count
    }

    private func flatten(_ nestedList: [NestedInteger]) {
        for nestedInt in nestedList {
            if nestedInt.isInteger() {
                list.append(nestedInt.getInteger())
            } else {
                flatten(nestedInt.getList())
            }
        }
    }
}
