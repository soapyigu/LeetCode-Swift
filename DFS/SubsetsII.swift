/**
 * Question Link: https://leetcode.com/problems/subsets-ii/
 * Primary idea: Classic Depth-first Search, avoid duplicates by adopting the first occurrence
 * 
 * Time Complexity: O(n * 2^n), Space Complexity: O(n * 2^n)
 *
 */

class SubsetsII {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]](), path = [Int]()
        
        dfs(&res, &path, 0, nums.sorted())
        
        return res
    }
    
    private func dfs(_ res: inout [[Int]], _ path: inout [Int], _ idx: Int, _ nums: [Int]) {
        res.append(path)
        
        for i in idx..<nums.count {
            if i > 0 && nums[i] == nums[i - 1] && i != idx {
                continue   
            }
            
            path.append(nums[i])
            dfs(&res, &path, i + 1, nums)
            path.removeLast()
        }
    }
}
