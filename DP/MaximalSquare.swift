/**
 * Question Link: https://leetcode.com/problems/maximal-square/
 * Primary idea: Dynamic Programming, new one is equal to the min square width plus one
 * Time Complexity: O(mn), Space Complexity: O(mn)
 */

class MaximalSquare {
    func maximalSquare(matrix: [[Character]]) -> Int {
        guard matrix.count != 0 else {
            return 0
        }
    
        let m = matrix.count
        let n = matrix[0].count
    
        var max_global = 0
        var maxSquareSide = Array(count: m, repeatedValue: (Array(count: n, repeatedValue: 0)))
        
        for i in 0 ..< m {
            for j in 0 ..< n {
                guard matrix[i][j] != "0" else {
                    continue;
                }
            
                if i == 0 || j == 0 {
                    maxSquareSide[i][j] = 1
                } else {
                    maxSquareSide[i][j] = min(maxSquareSide[i][j - 1], maxSquareSide[i - 1][j], maxSquareSide[i - 1][j - 1]) + 1
                }
                
                max_global = max(max_global, maxSquareSide[i][j])
            }
        }
        
        return max_global * max_global
    }
}