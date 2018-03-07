/**
 * Question Link: https://leetcode.com/problems/combination-sum-iii/
 * Primary idea: Classic Depth-first Search
 * 
 * Time Complexity: O(n!), Space Complexity: O(nCk)
 *
 */

class CombinationSumIII {
    func combinationSum3(k: Int, _ n: Int) -> [[Int]] {
        let candidates = [Int](1...9)
        var res = [[Int]](), path = [Int]()
        
        dfs(&res, &path, candidates, n, 0, k)
        
        return res
    }
    
    fileprivate func dfs(_ res: inout [[Int]], _ path: inout [Int], _ candidates: [Int], _ target: Int, _ index: Int, _ size: Int) {
        if target == 0 && path.count == size {
            res.append(Array(path))
            return
        }

        guard path.count < size else {
            return
        }       
        
        for i in index..<candidates.count {
            let candidate = candidates[i]

            guard candidate <= target else {
                break
            }
            
            path.append(candidate)
            _dfs(&res, &path, candidates, target - candidate, i + 1, size)
            path.removeLast()
        }
    }
}