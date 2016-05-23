/**
 * Question Link: https://leetcode.com/problems/climbing-stairs/
 * Primary idea: Dynamic Programming, use array as a cache to store calculated data
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class ClimbingStairs {
    func climbStairs(n: Int) -> Int {
        var steps = [Int](count: n + 1, repeatedValue: 0)
        return _helper(n, &steps)
    }
    
    private func _helper(n: Int, inout _ steps: [Int]) -> Int {
        // termination case
        if n < 0 {
            return 0
        }
        if n == 0 {
            return 1
        }
        
        if steps[n] != 0 {
            return steps[n]
        }
        
        steps[n] = _helper(n - 1, &steps) + _helper(n - 2, &steps)
        return steps[n]
    }
}