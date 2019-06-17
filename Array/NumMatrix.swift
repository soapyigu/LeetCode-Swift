/**
 * Question Link: https://leetcode.com/problems/range-sum-query-2d-immutable/
 * Primary idea: Prebuild a sum matrix by original as top left point and current as bottom right point
 *
 * Time Complexity: O(mn) for init(), O(1) for sumRegion(), Space Complexity: O(mn)
 */

class NumMatrix {
    fileprivate var sum: [[Int]]
    
    init(_ matrix: [[Int]]) {
        let m = matrix.count, n = matrix[0].count
        sum = Array(repeating: Array(repeating: 0, count: n), count: m)
        
        for i in 0..<m {
            var lineSum = 0
            for j in 0..<n {
                lineSum += matrix[i][j]
                
                if i == 0 {
                    sum[i][j] = lineSum
                } else {
                    sum[i][j] = lineSum + sum[i - 1][j]
                }
            }
        }
    }
    
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        if row1 == 0 && col1 == 0 {
            return sum[row2][col2]
        } else if row1 == 0 {
            return sum[row2][col2] - sum[row2][col1 - 1]
        } else if col1 == 0 {
            return sum[row2][col2] - sum[row1 - 1][col2]
        } else {
            return sum[row2][col2] - sum[row2][col1 - 1] - sum[row1 - 1][col2] + sum[row1 - 1][col1 - 1]
        }
    }
}