/**
 * Question Link: https://leetcode.com/problems/permutations/
 * Primary idea: Classic Depth-first Search, remember backtracking
 * 
 * Time Complexity: O(n!), Space Complexity: O(n)
 *
 */

class Permutations {
    func permute(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var path = [Int]()
        var isVisited = [Bool](repeating: false, count: nums.count)
        
        dfs(&res, &path, &isVisited, nums)
        
        return res
    }
    
    private func dfs(_ res: inout [[Int]], _ path: inout [Int], _ isVisited: inout [Bool], _ nums: [Int]) {
        guard path.count != nums.count else {
            res.append(path)
            return
        }
        
        for (i, num) in nums.enumerated() where !isVisited[i] {
            path.append(num)
            isVisited[i] = true
            dfs(&res, &path, &isVisited, nums)
            isVisited[i] = false
            path.removeLast()
        }
    }
}