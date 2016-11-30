/**
 * Question Link: https://leetcode.com/problems/combination-sum-iii/
 * Primary idea: Classic Depth-first Search
 * 
 * Time Complexity: O(n!), Space Complexity: O(nCk)
 *
 */

class combinationSumIII {
    func combinationSum3(k: Int, _ n: Int) -> [[Int]] {
        let candidates = [Int](1 ... 9)
        var res = [[Int]]()
        var path = [Int]()
        
        _dfs(&res, &path, candidates, n, 0, k)
        
        return res
    }
    
    private func _dfs(inout res: [[Int]], inout _ path: [Int], _ candidates: [Int], _ target: Int, _ index: Int, _ size: Int) {
        if target == 0 && path.count == size{
            res.append(Array(path))
            return
        }       
        
        for i in index ..< candidates.count {
            guard candidates[i] <= target else {
                break
            }
            
            path.append(candidates[i])
            _dfs(&res, &path, candidates, target - candidates[i], i + 1, size)
            path.removeLast()
        }
    }
}