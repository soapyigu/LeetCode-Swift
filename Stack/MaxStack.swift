/**
 * Question Link: https://leetcode.com/problems/max-stack/
 * Primary idea: Use a helper stack to keep track of the max value overall when a new
 * 				 element is pushed and also updates the helper stack when pop API is called
 *
 * Time Complexity: push - O(1), pop - O(1), top - O(1), peekMax - O(1), popMax - O(n) 
 * Space Complexity: O(n)
 */

 class MaxStack {
    
    var stack: [Int]
    var maxStack: [Int]

    /** initialize your data structure here. */
    init() {
        stack = [Int]()
        maxStack = [Int]()
    }
    
    func push(_ x: Int) {
        stack.append(x)
        maxStack.append(maxStack.isEmpty ? x : max(x, maxStack.last!))
    }
    
    func pop() -> Int {
        maxStack.removeLast()
        return stack.removeLast()
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func peekMax() -> Int {
        return maxStack.last!
    }
    
    func popMax() -> Int {
        let maxVal = peekMax()
        
        // remove max from stack
        var buffer = [Int]()
        while top() != maxVal {
            buffer.append(pop())
        }
        pop()
        while !buffer.isEmpty {
            push(buffer.removeLast())
        }
        
        return maxVal
    }
}