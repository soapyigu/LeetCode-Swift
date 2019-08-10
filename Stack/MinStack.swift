/**
 * Question Link: https://leetcode.com/problems/min-stack/
 * Primary idea: Use a helper stack to help save the minimum values --
 *               only when the new pushed value is less than the top value,
 *               and remove values correspond to pop operation
 * Time Complexity: O(1), Space Complexity: O(n)
 */

class MinStack {
    var stack: [Int]
    var minStack: [Int]

    /** initialize your data structure here. */
    init() {
        stack = [Int]()
        minStack = [Int]()
    }
    
    func push(_ x: Int) {
        stack.append(x)
        
        if minStack.isEmpty || x <= minStack.last! {
            minStack.append(x)
        }
    }
    
    func pop() {
        guard !stack.isEmpty else {
            return
        }
        
        let removedVal = stack.removeLast()
        
        if let last = minStack.last, last == removedVal {
            minStack.removeLast()
        }
    }
    
    func top() -> Int {
        return stack.isEmpty ? -1 : stack.last!
    }
    
    func getMin() -> Int {
        return minStack.isEmpty ? -1 : minStack.last!
    }
}