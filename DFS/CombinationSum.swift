/**
 * Question Link: https://leetcode.com/problems/combination-sum/
 * Primary idea: Classic Depth-first Search
 * 
 * Time Complexity: O(n^n), Space Complexity: O(n)
 *
 */

class CombinationSum {
    func combinationSum(candidates: [Int], _ target: Int) -> [[Int]] {
        var res = [[Int]]()
        
        guard candidates.count > 0 else {
            return res
        }
    
        var path = [Int]()
        let candidates = candidates.sort({$0 < $1})
        
        _dfs(candidates, target, &res, &path, 0)
        
        return res
    }
    
    private func _dfs(candidates: [Int], _ target: Int, inout _ res: [[Int]], inout _ path: [Int], _ index: Int) {
        if target == 0 {
            res.append([Int](path))
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