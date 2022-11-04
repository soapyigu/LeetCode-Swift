/**
 * Question Link: https://leetcode.com/problems/leftmost-column-with-at-least-a-one/
 * Primary idea: Iterate through top right and then move left down 
 *
 * Time Complexity: O(m + n), Space Complexity: O(1)
 *
 */

/**
 * // This is the BinaryMatrix's API interface.
 * // You should not implement it, or speculate about its implementation
 * public class BinaryMatrix {
 *     public func get(_ row: Int, _ col: Int) -> Int {}
 *     public func dimensions() -> [Int] {}
 * };
 */

class LeftmostColumnLeastOne {
    func leftMostColumnWithOne(_ binaryMatrix: BinaryMatrix) -> Int {
        let dimensions = binaryMatrix.dimensions()
        let m = dimensions[0], n = dimensions[1]
        var row = 0, col = n - 1, res = -1

        while row < m && col >= 0 {
            if binaryMatrix.get(row, col) == 0 {
                row += 1
            } else {
                res = col
                col -= 1
            }
        }

        return res
    }
}
