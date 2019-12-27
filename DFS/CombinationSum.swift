/**
 * Question Link: https://leetcode.com/problems/combination-sum/
 * Primary idea: Classic Depth-first Search
 * 
 * Time Complexity: O(n^n), Space Complexity: O(2^n - 1)
 *
 */

class CombinationSum {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var combination = [Int](), combinations = [[Int]]()
        
        dfs(candidates.sorted(), target, 0, &combinations, &combination)
        
        return combinations
    }
    
    private func dfs(_ candidates: [Int], _ target: Int, _ index: Int, _ combinations: inout [[Int]], _ combination: inout [Int]) {
        if target == 0 {
            combinations.append(combination)
            return
        }
        
        for i in index..<candidates.count {
            guard candidates[i] <= target else {
                break
            }
            
            combination.append(candidates[i])
            dfs(candidates, target - candidates[i], i, &combinations, &combination)
            combination.removeLast()
        }
    }
}