/**
 * Question Link: https://leetcode.com/problems/lru-cache/
 * Primary idea: Use Doubly linked list and hash table to build the LRU cache.
 * Time Complexity: O(1), Space Complexity: O(n)
 *
 */

class DoublyLinkedList{
    var key: Int
    var value: Int
    var previous: DoublyLinkedList?
    var next: DoublyLinkedList?
    var hashValue: Int
    
    init(_ key: Int, _ value: Int) {
        self.key = key
        self.value = value
        self.hashValue = key
    }
}

class LRUCache{
    var maxCapacity: Int
    var head: DoublyLinkedList
    var tail: DoublyLinkedList
    var cache: [Int: DoublyLinkedList]
    
    init(_ maxCapacity: Int) {
        self.maxCapacity = maxCapacity
        self.cache = [Int: DoublyLinkedList]()
        self.head = DoublyLinkedList(Int.min, Int.min)
        self.tail = DoublyLinkedList(Int.max, Int.max)
        self.head.next = self.tail
        self.tail.previous = self.head
    }
    
    func add(_ node: DoublyLinkedList){
        let next = head.next
        head.next = node
        node.previous = head
        node.next = next
        next?.previous = node
    }
    
    func remove(_ node: DoublyLinkedList){
        let previous = node.previous
        let next = node.next
        previous?.next = next
        next?.previous = previous
    }
    
    func get(_ key: Int) -> Int{
        if let node = cache[key]{
            remove(node)
            add(node)
            return node.value
        }
        return -1
    }
    
    func put(_ key: Int, _ value: Int){
        if let node = cache[key]{
            remove(node)
            cache.removeValue(forKey: key)
        }else if cache.keys.count >= maxCapacity{
            if let leastNode = tail.previous{
                remove(leastNode)
                cache.removeValue(forKey: leastNode.key)
            }
        }
        let newNode = DoublyLinkedList(key, value)
        cache[key] = newNode
        add(newNode)
    }
}
