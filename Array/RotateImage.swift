/**
 * Question Link: https://leetcode.com/problems/spiral-matrix/
 * Primary idea: Go from clockwise and from outside to inside, use offset for convenience
 *
 * Time Complexity: O(n^2), Space Complexity: O(1)
 */

class RotateImage {
    func rotate(inout matrix: [[Int]]) {
        let n = matrix.count
    
        guard n > 0 else {
            return
        }
        
        var start = 0
        var end = 0
        var offset = 0
        var temp = 0
        
        for layer in 0 ..< n / 2 {
            start = layer
            end = n - 1 - layer
            
            for i in start ..< end {
                offset = i - start
                temp = matrix[start][i]
                
                // left -> top
                matrix[start][i] = matrix[end - offset][start]
                
                // bottom -> left
                matrix[end - offset][start] = matrix[end][end - offset]
                
                // right -> bottom
                matrix[end][end - offset] = matrix[i][end]
                
                // top -> right
                matrix[i][end] = temp
            }
        }
    }
}