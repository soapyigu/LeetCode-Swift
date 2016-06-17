/**
 * Question Link: https://leetcode.com/problems/combination-sum-ii/
 * Primary idea: Classic Depth-first Search
 * 
 * Time Complexity: O(n!)
 *
 */

class combinationSumII {
    func combinationSum2(candidates: [Int], _ target: Int) -> [[Int]] {
        var res = [[Int]]()
        var path = [Int]()
        
        _dfs(&res, &path, target, candidates.sort({$0 < $1}), 0)
        
        return res
    }
    
    private func _dfs(inout res: [[Int]], inout _ path: [Int], _ target: Int, _ candidates: [Int], _ index: Int) {
        if target == 0 {
            res.append(Array(path))
            return
        }
        
        for i in index ..< candidates.count {
            guard candidates[i] <= target else {
                break
            }
            
            if i > 0 && candidates[i] == candidates[i - 1] && i != index {
                continue
            }
            
            path.append(candidates[i])
            _dfs(&res, &path, target - candidates[i], candidates, i + 1)
            path.removeLast()
        }
    }
}