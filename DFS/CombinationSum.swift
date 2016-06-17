/**
 * Question Link: https://leetcode.com/problems/combination-sum/
 * Primary idea: Classic Depth-first Search
 * 
 * Time Complexity: O(n^n)
 *
 */

class CombinationSum {
    func combinationSum(candidates: [Int], _ target: Int) -> [[Int]] {
        var res = [[Int]]()
        var path = [Int]()
        
        _dfs(candidates.sort({$0 < $1}), target, &res, &path, 0)
        
        return res
    }
    
    private func _dfs(candidates: [Int], _ target: Int, inout _ res: [[Int]], inout _ path: [Int], _ index: Int) {
        if target == 0 {
            res.append(Array(path))
            return
        }
        
        for i in index ..< candidates.count {
            guard candidates[i] <= target else {
                break
            }
            
            path.append(candidates[i])
            _dfs(candidates, target - candidates[i], &res, &path, i)
            path.removeLast()
        }
    }
}