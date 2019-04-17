/**
 * Question Link: https://leetcode.com/problems/lfu-cache/
 * Primary idea: Use linked list and hash map to build the cache.
 * Time Complexity Per Action: O(1), Space Complexity: O(K)
 *
 */

class LFUCache {
	
	private let capacity: Int
	private var nodeMap = [Int: CacheNode]()
	private var listMap = [Int: CacheList]()
	private var size = 0
	private var leastFrequency = 1

	init(_ capacity: Int) {
		self.capacity = capacity
	}
	
	func get(_ key: Int) -> Int {
		guard let node = nodeMap[key], let list = listMap[node.count] else {
			return -1
		}
		updateExsit(node: node)
		return node.val
	}
	
	func put(_ key: Int, _ value: Int) {
		if capacity == 0 {
			return
		}
		
		if let node = nodeMap[key], let list = listMap[node.count] {
			node.val = value
			updateExsit(node: node)
		} else {
			removeCacheIfNeeded()
			
			let node = CacheNode(key, value)
			nodeMap[key] = node
			listMap(add: node)
			
			size += 1
			leastFrequency = 1
		}
	}
	
	private func updateExsit(node: CacheNode) {
		guard let list = listMap[node.count] else {
			return
		} 
		list.remove(node)
		
		if list.isEmpty {
			listMap[node.count] = nil

			if leastFrequency == node.count {
				leastFrequency += 1
			}
		}
			
		node.count += 1
		listMap(add: node)
	}
	
	private func removeCacheIfNeeded() {
		guard size >= capacity, let list = listMap[leastFrequency], let key = list.removeLast()?.key else {
			return
		}
		size -= 1
		nodeMap[key] = nil
		if list.isEmpty {
			listMap[leastFrequency] = nil
		}
	}
		
	private func listMap(add node: CacheNode) {
		let list = listMap[node.count, default: CacheList()]
		list.add(node)
		listMap[node.count] = list
	}
	
}

class CacheList {
	
	private let head = CacheNode(0, 0)
	private let tail = CacheNode(0, 0)
	private var count = 0
	
	var isEmpty: Bool {
		return count <= 0
	}
	
	init() {
		head.next = tail
		tail.pre = head
	}
	
	func add(_ node: CacheNode) {
		head.next?.pre = node
		node.next = head.next
		node.pre = head
		head.next = node
		count += 1
	}
	
	
	func remove(_ node: CacheNode) {
		node.pre?.next = node.next
		node.next?.pre = node.pre
		node.next = nil
		node.pre = nil
		count -= 1
	}
	
	func removeLast() -> CacheNode? {
		guard !isEmpty, let node = tail.pre else {
			return nil
		}
		remove(node)
		return node
	}
	
}

class CacheNode {
	let key: Int
	var val: Int
	var pre: CacheNode?
	var next: CacheNode?
	var count = 1
	
	init(_ key: Int, _ val: Int) {
		self.key = key
		self.val = val
	}
}

/**
 * Your LFUCache object will be instantiated and called as such:
 * let obj = LFUCache(capacity)
 * let ret_1: Int = obj.get(key)
 * obj.put(key, value)
 */