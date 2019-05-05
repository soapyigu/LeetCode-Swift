/**
 * Question Link: https://leetcode.com/problems/lru-cache/
 * Primary idea: Use linked list and hash map to build the cache.
 * Time Complexity Per Action: O(1), Space Complexity: O(K)
 *
 */

class LRUCache {

    private let capacity: Int
    private var count = 0

    private let head = LRUCacheNode(0, 0)
    private let tail = LRUCacheNode(0, 0)

    private var dict = [Int: LRUCacheNode]()

    init(_ capacity: Int) {
        self.capacity = capacity

        head.next = tail
        tail.pre = head
    }

    func get(_ key: Int) -> Int {
        if let node = dict[key] {
            remove(key)
            insert(node)
            return node.val
        }
        return -1
    }

    func put(_ key: Int, _ value: Int) {
        if let node = dict[key] {
            node.val = value
            remove(key)
            insert(node)
            return
        }

        let node = LRUCacheNode(key, value)
        dict[key] = node
        if count == capacity, let tailKey = tail.pre?.key {
            remove(tailKey)
        }
        insert(node)
    }

    private func insert(_ node: LRUCacheNode) {
        dict[node.key] = node

        node.next = head.next
        head.next?.pre = node
        node.pre = head
        head.next = node

        count += 1
    }

    private func remove(_ key: Int) {
        guard count > 0, let node = dict[key] else {
            return
        }
        dict[key] = nil

        node.pre?.next = node.next
        node.next?.pre = node.pre
        node.pre = nil
        node.next = nil

        count -= 1
    }

}

fileprivate class LRUCacheNode {

    let key: Int
    var val: Int

    var pre: LRUCacheNode?
    var next: LRUCacheNode?

    init(_ key: Int, _ val: Int) {
        self.key = key
        self.val = val
    }

}
