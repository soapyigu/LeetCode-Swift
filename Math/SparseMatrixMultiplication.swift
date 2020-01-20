/**
 * Question Link: https://leetcode.com/problems/sparse-matrix-multiplication/
 * Primary idea: Use a matrix to mark indices of an matrix where is not zero to optimize the multiplication
 *
 * Time Complexity: O(n^3), Space Complexity: O(n^2)
 */

class SparseMatrixMultiplication {
    func multiply(_ A: [[Int]], _ B: [[Int]]) -> [[Int]] {
        let l = A.count, m = B.count, n = B[0].count
        
        var res = Array(repeating: Array(repeating: 0, count: n), count: l)
        
        var nonZeroB = Array(repeating: [Int](), count: m)
        for i in 0..<m {
            for j in 0..<n {
                if B[i][j] != 0 {
                    nonZeroB[i].append(j)
                }
            }
        }
        
        for i in 0..<l {
            for j in 0..<m {
                if A[i][j] == 0 {
                    continue
                }
                
                for k in nonZeroB[j] {
                    res[i][k] += A[i][j] * B[j][k]
                }
            }
        }
        
        return res
    }
}