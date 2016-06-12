/**
 * Question Link: https://leetcode.com/problems/permutations/
 * Primary idea: Classic Depth-first Search, remember backtracking
 * 
 * Time Complexity: O(n!), Space Complexity: O(n)
 *
 */

class Permutations {
    func permute(nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var path = [Int]()
        var visited = [Bool](count: nums.count, repeatedValue: false)
        
        let nums = nums.sort({$0 < $1})
        
        _dfs(&res, &path, nums, &visited)
        
        return res
    }
    
    private func _dfs(inout res: [[Int]], inout _ path: [Int], _ nums: [Int], inout _ visited: [Bool]) {
        // termination case
        if path.count == nums.count {
            let path = path
            res.append(path)
            return
        }
        
        for i in 0 ..< nums.count {
            guard !visited[i] else {
                continue
            }
            
            path.append(nums[i])
            visited[i] = true
            _dfs(&res, &path, nums, &visited)
            visited[i] = false
            path.removeLast()
        }
    }
}