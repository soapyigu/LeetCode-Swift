/**
 * Question Link: https://leetcode.com/problems/permutations-ii/
 * Primary idea: Classic Depth-first Search, adopt last occurrence to avoid dupliates
 * 
 * Time Complexity: O(n^n), Space Complexity: O(n)
 *
 */

class PermutationsII {
    func permuteUnique(nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var path = [Int]()
        var visited = [Bool](count: nums.count, repeatedValue: false)
        
        let nums = nums.sorted(by: <)
        
        _dfs(&res, &path, nums, &visited)
        
        return res
    }
    
    private func _dfs(inout res: [[Int]], inout _ path: [Int], _ nums: [Int], inout _ visited: [Bool]) {
        // termination case
        if path.count == nums.count {
            res.append(Array(path))
            return
        }
        
        for i in 0..<nums.count {
            if visited[i] || (i > 0 && nums[i] == nums[i - 1] && visited[i - 1]) {
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