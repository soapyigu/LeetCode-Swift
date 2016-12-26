/**
 * Question Link: https://leetcode.com/problems/search-a-2d-matrix-ii/
 * Primary idea: Start from last element at first row, then move downwards or backwards
 *
 * Time Complexity: O(m + n), Space Complexity: O(1)
 */

class Search2DMatrixII {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        guard matrix.count > 0 else {
            return false
        }
    
        var row = 0, col = matrix[0].count - 1
        
        while row < matrix.count && col >= 0 {
            if matrix[row][col] == target {
                return true
            } else if matrix[row][col] < target {
                row += 1
            } else {
                col -= 1
            }
        }
        
        return false
    }
}