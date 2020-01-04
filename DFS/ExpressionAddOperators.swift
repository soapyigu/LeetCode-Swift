/**
 * Question Link: https://leetcode.com/problems/expression-add-operators/
 * Primary idea: Classic Depth-first Search, terminates at when position encounters the 
 *               length of the string num, add to result when eval is equal to target
 * 
 * Note: 
 * 1. String cast to Integer will make character loss, e.g. "05" -> 5
 * 2. Multiplication's priority is higher than addiction
 *
 * Time Complexity: O(n^n), Space Complexity: O(n)
 *
 */

class ExpressionAddOperators {
    func addOperators(_ num: String, _ target: Int) -> [String] {
        var res = [String]()
        
        dfs(Array(num), 0, target, 0, 0, &res, "")
            
        return res
    }

    private func dfs(_ nums: [Character], _ index: Int, _ target: Int, _ eval: Int, _ mul: Int, _ res: inout [String], _ candidate: String) {
        if index == nums.count {
            if eval == target {
                res.append(candidate)
            }
              
            return
        }
        
        for i in index..<nums.count {
            // edge case: "305", 15 -> []
            if i != index && nums[index] == "0" {
                break
            }
            
            let curStr = String(nums[index...i])
            
            guard let cur = Int(curStr) else {
                fatalError("Invalid input: num")
            }
            
            if index == 0 {
                dfs(nums, i + 1, target, cur, cur, &res, curStr)
            } else {
                dfs(nums, i + 1, target, eval + cur, cur, &res, candidate + "+" + curStr)
                dfs(nums, i + 1, target, eval - cur, -cur, &res, candidate + "-" + curStr)
                dfs(nums, i + 1, target, eval - mul + mul * cur, mul * cur, &res, candidate + "*" + curStr)
            }
        }
    }
}
