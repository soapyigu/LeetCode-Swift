/**
 * Question Link: https://leetcode.com/problems/n-queens/
 * Primary idea: Classic Depth-first Search, fill out row by row, and check column and 
 *               diagnol for each time, only need to care which column is used
 * 
 * Time Complexity: O(n!), Space Complexity: O(n)
 *
 */

 class NQueensII {
    func totalNQueens(_ n: Int) -> Int {
        guard n > 0 else {
            return 0
        }
        var count = 0
        var usedCols = Array(repeating: 0, count: n)
        
        dfs(&usedCols, &count, n, 0)
        
        return count
    }
    
    private func dfs(_ usedCols: inout [Int], _ count: inout Int, _ n: Int, _ row: Int) {
        if row == n {
            count += 1
            return
        }
        
        for col in 0..<n {
            if isValid(usedCols, row, col) {
                usedCols[row] = col
                dfs(&usedCols, &count, n, row + 1)
            }
        }
    }
    
    private func isValid(_ usedCols: [Int], _ row: Int, _ col: Int) -> Bool {
        var c = -1
    
        for i in 0..<row {
            c = usedCols[i] 
            
            // check col
            if c == col {
                return false
            }
            
            if abs(c - col) == abs(i - row) {
                return false
            }
        }
        
        return true
    }
}