/**
 * Question Link: https://leetcode.com/problems/combinations/
 * Primary idea: Classic Depth-first Search, another version of Subsets
 * 
 * Time Complexity: O(n!), Space Complexity: O(n)
 *
 */

class Combinations {
    func combine(n: Int, _ k: Int) -> [[Int]] {
        var res = [[Int]]()
        var path = [Int]()
        let nums = [Int](1...n)
        
        _dfs(nums, &res, &path, 0, k)
        
        return res
    }
    
    private func _dfs(nums: [Int], inout _ res: [[Int]], inout _ path: [Int], _ index: Int, _ k: Int) {
        if path.count == k {
            res.append([Int](path))
            return
        }
        
        for i in index..<nums.count {
            path.append(nums[i])
            _dfs(nums, &res, &path, i + 1, k)
            path.removeLast()
        }
    }
}