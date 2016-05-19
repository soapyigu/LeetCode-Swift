/**
 * Question Link: https://leetcode.com/problems/subsets-ii/
 * Primary idea: Classic Depth-first Search, avoid duplicates by adopting the first occurrence
 * 
 * Time Complexity: O(n!), Space Complexity: O(n)
 *
 */

class SubsetsII {
    func subsetsWithDup(nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var path = [Int]()
        
        let nums = nums.sort({$0 < $1})
        
        _dfs(&res, &path, nums, 0)
        
        return res
    }
    
    private func _dfs(inout res: [[Int]], inout _ path:[Int], _ nums: [Int], _ index: Int) {
        let newPath = path
        res.append(newPath)
        
        for i in index ..< nums.count {
            if i > 0 && nums[i] == nums[i - 1] && i != index {
                continue
            }
            
            path.append(nums[i])
            _dfs(&res, &path, nums, i + 1)
            path.removeLast()
        }
    }
}