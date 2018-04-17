/**
 * Question Link: https://leetcode.com/problems/regular-expression-matching/
 * Primary idea: Classic Two Dimensionel Dynamic Programming
 * Time Complexity: O(mn), Space Complexity: O(mn)
 */

class RegularExpressionMatching {
    func isMatch(_ s: String, _ p: String) -> Bool {
        let sChars = Array(s), pChars = Array(p)
        var dp = Array(repeating: Array(repeating: false, count: pChars.count + 1), count: sChars.count + 1)
        dp[0][0] = true
        
        for i in 0...pChars.count {
        	// jump over "" vs. "x*" case
            dp[0][i] = i == 0 || i > 1 && dp[0][i - 2] && pChars[i - 1] == "*"
        }
        
        for i in 0...sChars.count {
            for j in 0...pChars.count {
                guard j > 0 else {
                    continue
                }
                
                let pCurrent = pChars[j - 1]
                
                if pCurrent != "*" {
                    dp[i][j] = i > 0 && dp[i - 1][j - 1] && (pCurrent == "." || pCurrent == sChars[i - 1])
                } else {
                    dp[i][j] = dp[i][j - 2] || i > 0 && j > 1 && (sChars[i - 1] == pChars[j - 2] || pChars[j - 2] == ".") && dp[i - 1][j]
                }
            }
        }
        
        return dp[sChars.count][pChars.count]
    }
}