/**
 * Question Link: https://leetcode.com/problems/factor-combinations/
 * Primary idea: Classic Depth-first Search
 * 
 * Time Complexity: O(n^n), Space Complexity: O(2^n - 1)
 *
 */

class FactorCombinations {
    func getFactors(_ n: Int) -> [[Int]] {
        var res = [[Int]]()
        var path = [Int]()
        
        dfs(&res, &path, n, 2)
        
        return res
    }
    
    private func dfs(_ res: inout [[Int]], _ path: inout [Int], _ n: Int, _ start: Int) {
        if n == 1 {
            if path.count > 1 {
                res.append(Array(path))
            }
            return
        }
        
        if start > n {
            return
        }
        
        for i in start ... n where n % i == 0 {
            path.append(i)
            dfs(&res, &path, n / i, i)
            path.removeLast()
        }
    }
}