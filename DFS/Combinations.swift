/**
 * Question Link: https://leetcode.com/problems/combinations/
 * Primary idea: Classic Depth-first Search, another version of Subsets
 * 
 * Time Complexity: O(2^n), Space Complexity: O(n)
 *
 */

class Combinations {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var res = [[Int]](), path = [Int]()
        
        dfs(&res, &path, 0, Array(1...n), k)
        
        return res
    }
    
    private func dfs(_ res: inout [[Int]], _ path: inout [Int], _ idx: Int, _ nums: [Int],  _ k: Int) {
        if path.count == k {
            res.append(path)
        }
        
        for i in idx..<nums.count {
            path.append(nums[i])
            dfs(&res, &path, i + 1, nums, k)
            path.removeLast()
        }
    }
}