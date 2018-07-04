/**
 * Question Link: https://leetcode.com/problems/subsets/
 * Primary idea: Classic Depth-first Search
 * 
 * Time Complexity: O(n^n), Space Complexity: O(n)
 *
 */

class Subsets {
    func subsets(nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var path = [Int]()
        
        let nums = nums.sorted(by: <)
        
        _dfs(&res, &path, nums, 0)
        
        return res
    }
    
    private func _dfs(inout res: [[Int]], inout _ path: [Int], _ nums: [Int], _ index: Int) {
        // termination case

        res.append(Array(path))
        
        for i in index..<nums.count {
            path.append(nums[i])
            _dfs(&res, &path, nums, i + 1)
            path.removeLast()
        }
    }
}