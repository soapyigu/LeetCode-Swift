/**
 * Question Link: https://leetcode.com/problems/snapshot-array/
 * Primary idea: Use the dictionary to dictionary to hold snapshot id to array data if necessary
 *
 * Time Complexity: O(1), Space Complexity: O(n)
 *
 */

class SnapshotArray {
    
    private var snapshotArrayMap: [Int: [Int: Int]]
    private var count = 0
    private var array = [Int: Int]()

    init(_ length: Int) {
        snapshotArrayMap = [Int: [Int: Int]]()
    }
    
    func set(_ index: Int, _ val: Int) {
        array[index] = val
    }
    
    func snap() -> Int {
        snapshotArrayMap[count] = array
        count += 1
        
        return count - 1
    }
    
    func get(_ index: Int, _ snap_id: Int) -> Int {
        return snapshotArrayMap[snap_id]?[index] ?? 0
    }
}
