/**
 * Question Link: https://leetcode.com/problems/climbing-stairs/
 * Primary idea: Dynamic Programming, dp[i] = dp[i - 1] + dp[i - 2]
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class ClimbingStairs {
    func climbStairs(_ n: Int) -> Int {
        if n < 0 {
            return 0
        }
        if n == 0 || n == 1 {
            return 1
        }
        
        var prev = 0, post = 1, total = 0
        
        for i in 1...n {
            total = prev + post
            
            prev = post
            post = total
        }
       
        return total
    }
}