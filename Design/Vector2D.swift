/**
 * Question Link: https://leetcode.com/problems/flatten-2d-vector/
 * Primary idea: Two pointers, one to iterate arrays,
 *               one to interate elements in a specifc array 
 *
 * Time Complexity: O(n) for next, O(n) for hasNext()
 * Space Complexity: O(n)
 *
 */

 class Vector2D {
    
    var arrayIdx: Int
    var elementIdx: Int
    var arrays: [[Int]]

    init(_ v: [[Int]]) {
        arrays = v
        arrayIdx = 0
        elementIdx = 0
    }
    
    func next() -> Int {
        if hasNext() {
            let element = arrays[arrayIdx][elementIdx]
            elementIdx += 1
            return element
        }
        
        fatalError("Invalid next call")
    }
    
    func hasNext() -> Bool {
        findNext()
        
        return arrayIdx < arrays.count
    }
    
    private func findNext() {
        while arrayIdx < arrays.count {
            if elementIdx < arrays[arrayIdx].count {
                return
            } else {
                arrayIdx += 1
                elementIdx = 0
            }
        }
    }
}
