/**
 * Question Link: https://leetcode.com/problems/permutations-ii/
 * Primary idea: Classic Depth-first Search, adopt last occurrence to avoid dupliates
 * 
 * Time Complexity: O(n^n), Space Complexity: O(n)
 *
 */

class PermutationsII {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]](), path = [Int](), visited = [Bool](repeating: false, count: nums.count)
        
        dfs(&res, &path, &visited, nums.sorted())
        
        return res
    }
    
    private func dfs(_ res: inout [[Int]], _ path: inout [Int], _ isVisited: inout [Bool], _ nums: [Int]) {
        if path.count == nums.count {
            res.append(path)
            return
        }
        
        for (i, num) in nums.enumerated() where !isVisited[i] {
            if i > 0 && nums[i] == nums[i - 1] && !isVisited[i - 1] {
                continue   
            }
            
            path.append(num)
            isVisited[i] = true
            dfs(&res, &path, &isVisited, nums)
            isVisited[i] = false
            path.removeLast()
        }
    }
}
