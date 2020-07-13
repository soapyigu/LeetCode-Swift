/**
 * Question Link: https://leetcode.com/problems/design-hashmap/
 * Primary idea: Use modulo and array of list / linked list to handle handle function and collision.
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class MyHashMap {
    
    let keySpace = 2069
    var buckets: [[(Int, Int)]]
    
    /** Initialize your data structure here. */
    init() {
        buckets = Array(repeating: [(Int, Int)](), count: keySpace)
    }
    
    /** value will always be non-negative. */
    func put(_ key: Int, _ value: Int) {
        var bucket = buckets[key % keySpace]
        
        if let index = find(key, bucket) {
            bucket[index].1 = value
        } else {
            bucket.append((key, value))
        }
        
        buckets[key % keySpace] = bucket
    }
    
    /** Returns the value to which the specified key is mapped, or -1 if this map contains no mapping for the key */
    func get(_ key: Int) -> Int {
        let bucket = buckets[key % keySpace]
        
        if let index = find(key, bucket) {
            return bucket[index].1
        } else {
            return -1
        }
    }
    
    /** Removes the mapping of the specified value key if this map contains a mapping for the key */
    func remove(_ key: Int) {
        var bucket = buckets[key % keySpace]
        
        guard let index = find(key, bucket) else {
            return
        }
        
        bucket.swapAt(index, bucket.count - 1)
        bucket.removeLast()
        
        buckets[key % keySpace] = bucket
    }
    
    private func find(_ key: Int, _ bucket: [(Int, Int)]) -> Int? {
        for (i, pair) in bucket.enumerated() where pair.0 == key {
            return i
        }
        
        return nil
    }
}
