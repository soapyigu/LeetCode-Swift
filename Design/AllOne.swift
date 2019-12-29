/**
 * Question Link: https://leetcode.com/problems/all-oone-data-structure/
 * Primary idea: Use a doubly linked list while the node is val and all keys, and 
 *				 a hash table where value is the node containing the key
 * Time Complexity: O(1), Space Complexity: O(n)
 *
 */

 class AllOne {
    
    private var dict: [String: Node]
    
    private var head: Node
    private var tail: Node

    /** Initialize your data structure here. */
    init() {
        dict = [String: Node]()
        
        head = Node(-1, "")
        tail = Node(-1, "")
        head.post = tail
        tail.prev = head
    }
    
    /** Inserts a new key <Key> with value 1. Or increments an existing key by 1. */
    func inc(_ key: String) {
        if let node = dict[key] {
            update(node, key, 1)
        } else {
            if head.post!.val != 1 {
                let node = Node(1, key)
                insert(node, after: head)
                dict[key] = node
            } else {
                head.post!.list.insert(key)
                dict[key] = head.post!
            }
        }
    }
    
    /** Decrements an existing key by 1. If Key's value is 1, remove it from the data structure. */
    func dec(_ key: String) {
        guard let node = dict[key] else {
            return
        }
        
        update(node, key, -1)
    }
    
    /** Returns one of the keys with maximal value. */
    func getMaxKey() -> String {
        if dict.count > 0 {
            return tail.prev!.list.first!
        } else {
            return ""
        }
    }
    
    /** Returns one of the keys with Minimal value. */
    func getMinKey() -> String {
        if dict.count > 0 {
            return head.post!.list.first!
        } else {
            return ""
        }
    }
    
    private func update(_ node: Node, _ key: String, _ addVal: Int) {
        node.list.remove(key)
        
        let next = addVal == 1 ? node.post : node.prev
        
        // insert new node
        if next!.val != node.val + addVal {
            guard node.val + addVal != 0 else {
                dict[key] = nil
                
                removeIfNecessary(node)
                
                return
            }
            
            let newNode = Node(node.val + addVal, key)
            
            if addVal == 1 {
                insert(newNode, after: node)
            } else {
                insert(newNode, before: node)
            }
            
            dict[key] = newNode
            
        // insert key to next node
        } else {
            next!.list.insert(key)
            dict[key] = next
        }
        
        removeIfNecessary(node)
    }
                    
    private func insert(_ newNode: Node, after node: Node) {
        node.post?.prev = newNode
        newNode.post = node.post
           
        newNode.prev = node
        node.post = newNode 
    }
                    
    private func insert(_ newNode: Node, before node: Node) {
        node.prev?.post = newNode
        newNode.prev = node.prev
           
        newNode.post = node
        node.prev = newNode  
    }
    
    private func removeIfNecessary(_ node: Node) {   
        guard node.list.isEmpty else {
            return
        }
        
        node.post!.prev = node.prev
        node.prev!.post = node.post
        
        node.prev = nil
        node.post = nil
    
    }
}

fileprivate class Node {
    var val: Int
    var list: Set<String>
    var prev: Node?
    var post: Node?
    
    init(_ val: Int, _ key: String) {
        self.val = val
        list = Set<String>([key])
    }
}

/**
 * Your AllOne object will be instantiated and called as such:
 * let obj = AllOne()
 * obj.inc(key)
 * obj.dec(key)
 * let ret_3: String = obj.getMaxKey()
 * let ret_4: String = obj.getMinKey()
 */