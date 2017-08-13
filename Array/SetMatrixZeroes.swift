/**
 * Question Link: https://leetcode.com/problems/set-matrix-zeroes/
 * Primary idea: Use first row and col to track if row and col should be set as 0, 
 *               remember they should be separate from other parts of matrix
 *
 * Time Complexity: O(n^2), Space Complexity: O(1)
 */

class SetMatrixZeroes {
    func setZeroes(_ matrix: inout [[Int]]) {
        var rowHasZero = false, colHasZero = false
        let m = matrix.count, n = matrix[0].count
  
        for i in 0..<m where matrix[i][0] == 0 {
            colHasZero = true
            break
        }
  
        for i in 0..<n where matrix[0][i] == 0 {
            rowHasZero = true
            break
        }
  
        for i in 1..<m {
            for j in 1..<n {
                if matrix[i][j] == 0 {
                    matrix[0][j] = 0
                    matrix[i][0] = 0
                }
            }
        }
  
        for i in 1..<m {
            for j in 1..<n {
                if matrix[0][j] == 0 || matrix[i][0] == 0 {
                    matrix[i][j] = 0
                }
            }
        }
  
        if rowHasZero {
            for i in 0..<n {
                matrix[0][i] = 0
            }
        }
  
        if colHasZero {
            for i in 0..<m {
                matrix[i][0] = 0
            }
        }
    }
}