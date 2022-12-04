/**
 * Question Link: https://leetcode.com/problems/wildcard-matching/
 * Primary idea: Classic Two Dimensionel Dynamic Programming
 * Time Complexity: O(mn), Space Complexity: O(mn)
 */

 class WildcardMatching {
    func isMatch(_ s: String, _ p: String) -> Bool {
        let s = Array(s), p = Array(p), m = s.count, n = p.count
        var dp = Array(repeating: Array(repeating: false, count: n + 1), count: m + 1)
        
        for j in 0...n {
            dp[0][j] = j == 0 || (dp[0][j - 1] && p[j - 1] == "*")
        }
        
        if m < 1 || n < 1 {
            return dp[m][n]
        }
        
        for i in 1...m {
            for j in 1...n {
                if p[j - 1] != "*" {
                    if p[j - 1] == s[i - 1] || p[j - 1] == "?" {
                        dp[i][j] = dp[i - 1][j - 1]
                    } else {
                        dp[i][j] = false
                    }
                } else {
                    dp[i][j] = dp[i][j - 1] || dp[i - 1][j]
                }
            }
        }
        
        return dp[m][n]
    }
}