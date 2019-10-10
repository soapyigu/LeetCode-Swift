/**
 * Question Link: https://leetcode.com/problems/pascals-triangle/
 * Primary idea: Follow the pascals' triangle regular pattern: `row[index] = prevRow[index - 1] + prevRow[index]``, and consider edge cases.
 *
 *   [1],
 *   [1,1],
 *   [1,2,1],
 *   [1,3,3,1],
 *   [1,4,6,4,1]
 *
 * Time Complexity: O(n^2), Space Complexity: O(n^2)
 */

import Foundation

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        guard numRows > 0 else { return [] }
        
        var triangle = [[Int]]()
        
        triangle.append([1]) // first row always be [1]
        
        for rowIndex in 1..<numRows {
            var row = [Int]()
            var prevRow = triangle[rowIndex - 1]
            
            row.append(1) // first element of a row always be 1
            
            for index in 1..<rowIndex {
                row.append(prevRow[index - 1] + prevRow[index])
            }
            
            row.append(1) // last element of a row always be 1
            
            triangle.append(row)
        }
        
        return triangle
    }
}

// Tests
let s = Solution()
let input = 5
let expectation = [
    [1],
    [1,1],
    [1,2,1],
    [1,3,3,1],
    [1,4,6,4,1]
]
assert(s.generate(input) == expectation)
