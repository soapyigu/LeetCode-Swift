/**
 * Question Link: https://leetcode.com/problems/combination-sum-iii/
 * Primary idea: Classic Depth-first Search
 * 
 * Time Complexity: O(n!)
 *
 */

class combinationSumIII {
    func combinationSum3(k: Int, _ n: Int) -> [[Int]] {
        let candidates = _init()
        var res = [[Int]]()
        var path = [Int]()
        
        _dfs(&res, &path, candidates, n, 0, k)
        
        return res
    }
    
    private func _init() -> [Int] {
        var res = [Int]()
        for num in 1 ... 9 {
            res.append(num)
        }
        return res
    }
    
    private func _dfs(inout res: [[Int]], inout _ path: [Int], _ candidates: [Int], _ target: Int, _ index: Int, _ size: Int) {
        if target == 0 && path.count == size{
            res.append([Int](path))
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