/**
 * Question Link: https://leetcode.com/problems/implement-queue-using-stacks/
 * Primary idea: queue
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 * Copyright © 2019 Ilyar Mnazhdin. All rights reserved.

 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */

import Foundation

class MyQueue {
    var storage = [Int]()
    
    /** Initialize your data structure here. */
    init() {
        
    }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        storage.append(x)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        return storage.removeFirst()
    }
    
    /** Get the front element. */
    func peek() -> Int {
        guard let first = storage.first else { return 0}
        return first
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        return storage.isEmpty
    }
}
