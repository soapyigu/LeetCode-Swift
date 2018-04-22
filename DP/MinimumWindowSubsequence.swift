/**
 * Question Link: https://leetcode.com/problems/minimum-window-subsequence/
 * Primary idea: Dynamic Programming, dp[i][j] = dp[i][j - 1] || dp[i - 1][j - 1]
 * Time Complexity: O(mn), Space Complexity: O(mn)
 *
 */

 class MinimumWindowSubsequence {
    func minWindow(_ S: String, _ T: String) -> String {
        let m = T.count, n = S.count, sChars = Array(S), tChars = Array(T)
        var dp = Array(repeating: Array(repeating: 0, count: n + 1), count: m + 1)
        var start = 0, len = n + 1
        
        for i in 0...n {
            dp[0][i] = i + 1
        }
        
        for i in 1...m {
            for j in 1...n {
                if tChars[i - 1] == sChars[j - 1] {
                    dp[i][j] = dp[i - 1][j - 1]
                } else {
                    dp[i][j] = dp[i][j - 1]
                }
            }
        }
        
        for i in 1...n {
            if dp[m][i] != 0 {
                if i - dp[m][i] + 1 < len {
                    len = i - dp[m][i] + 1
                    start = dp[m][i] - 1
                }
            }
        }
        
        return len == n + 1 ? "" : String(sChars[start..<start + len])
    }
}