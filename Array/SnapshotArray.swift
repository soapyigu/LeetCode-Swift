/**
 * Question Link: https://leetcode.com/problems/snapshot-array/
 * Primary idea: create the SnapshotArray, set items using set() function, take snapshot of array using snap() function, retreive snapped items using get(_ index, _ snap_id) function.
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class SnapshotArray {

    private let length: Int
    private var items = [Int: Int]()
    private var snaps = [Int: [Int: Int]]()
    private var snapCounter: Int = 0

    init(_ length: Int) {
        self.length = length
    }

    func set(_ index: Int, _ val: Int) {
        items[index] = val
    }

    func snap() -> Int {
        snaps[snapCounter] = items
        snapCounter += 1
        return snapCounter - 1
    }

    func get(_ index: Int, _ snap_id: Int) -> Int {
        return snaps[snap_id]?[index] ?? 0
    }
}