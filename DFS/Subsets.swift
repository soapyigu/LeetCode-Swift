/**
 * Question Link: https://leetcode.com/problems/subsets/
 * Primary idea: Classic Depth-first Search
 * 
 * Time Complexity: O(n * 2^n), Space Complexity: O(n * 2^n)
 *
 */

class Subsets {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]](), path = [Int]()
        
        dfs(&res, &path, 0, nums)
        
        return res
    }
    
    private func dfs(_ res: inout [[Int]], _ path: inout [Int], _ idx: Int, _ nums: [Int]) {
        res.append(path)
        
        for i in idx..<nums.count {
            path.append(nums[i])
            dfs(&res, &path, i + 1, nums)
            path.removeLast()
        }
    }
}
