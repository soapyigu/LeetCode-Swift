/**
 * Question Link: https://leetcode.com/problems/lru-cache/
 * Primary idea: Use Doubly linked list and hash table to build the LRU cache.
 * Time Complexity: O(1), Space Complexity: O(n)
 *
 */

class LRUCache {
    
    private let capacity: Int
    private let head = Node(0, 0)
    private let tail = Node(0, 0)
    
    private var keyNodeMap = [Int: Node]()

    init(_ capacity: Int) {
        self.capacity = capacity
        
        head.next = tail
        tail.prev = head
    }
    
    func get(_ key: Int) -> Int {
        guard let node = keyNodeMap[key] else {
            return -1
        }
        
        remove(node)
        moveToHead(node)
        
        return node.val
    }
    
    func put(_ key: Int, _ value: Int) {
        let node = Node(key, value)
        
        if let lastNode = keyNodeMap[key] {
            remove(lastNode)
        }
        
        keyNodeMap[key] = node
        moveToHead(node)
        
        if keyNodeMap.count > capacity {
            keyNodeMap[tail.prev!.key] = nil
            remove(tail.prev!)
        }
    }
    
    private func remove(_ node: Node) {
        let prev = node.prev
        let post = node.next
        
        prev!.next = post
        post!.prev = prev
        
        node.next = nil
        node.prev = nil
    }
    
    private func moveToHead(_ node: Node) {
        let first = head.next
        
        head.next = node
        
        node.prev = head
        node.next = first
        
        first!.prev = node
    }
    
    class Node {
        let key: Int
        var val: Int
        
        var prev: Node?
        var next: Node?
        
        init(_ key: Int, _ val: Int) {
            self.key = key
            self.val = val
        }
    }
}

/**
 * Your LRUCache object will be instantiated and called as such:
 * let obj = LRUCache(capacity)
 * let ret_1: Int = obj.get(key)
 * obj.put(key, value)
 */
