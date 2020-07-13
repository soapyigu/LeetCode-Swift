/**
 * Question Link: https://leetcode.com/problems/factor-combinations/
 * Primary idea: Classic Depth-first Search
 * 
 * Time Complexity: O(n^n), Space Complexity: O(2^n - 1)
 *
 */

class FactorCombinations {
    func getFactors(_ n: Int) -> [[Int]] {
        var paths = [[Int]](), path = [Int]()
        
        dfs(&paths, path, 2, n)
        
        return paths
    }
    
    private func dfs(_ paths: inout [[Int]], _ path: [Int], _ start: Int, _ target: Int) {
        if target == 1 {
            if path.count > 1 {
                paths.append(path)
            }
            return
        }
        
        guard start <= target else {
            return
        }
        
        for factor in start...target where target % factor == 0 {
            dfs(&paths, path + [factor], factor, target / factor)
        }
    }
}