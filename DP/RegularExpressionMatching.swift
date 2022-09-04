/**
 * Question Link: https://leetcode.com/problems/regular-expression-matching/
 * Primary idea: Classic Two Dimensionel Dynamic Programming
 * Time Complexity: O(mn), Space Complexity: O(mn)
 */

class RegularExpressionMatching {
    func isMatch(_ s: String, _ p: String) -> Bool {
        let s = Array(s), p = Array(p), m = s.count, n = p.count
        var dp = Array(repeating: Array(repeating: false, count: n + 1), count: m + 1)
        
        for j in 0...n {
            dp[0][j] = j == 0 || (j > 1 && dp[0][j - 2] && p[j - 1] == "*") 
        }
        
        for i in 1...m {
            for j in 1...n {
                if p[j - 1] != "*" {
                    if p[j - 1] == s[i - 1] || p[j - 1] == "." {
                        dp[i][j] = dp[i - 1][j - 1]
                    } else {
                        dp[i][j] = false
                    }      
                } else {
                    if j > 1 {
                        dp[i][j] = dp[i][j - 2] || ((p[j - 2] == s[i - 1] || p[j - 2] == ".") && dp[i - 1][j])
                    }  
                }
            }
        }
        
        return dp[m][n]
    }
}