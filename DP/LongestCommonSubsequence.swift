/**
 * Question Link: https://leetcode.com/problems/longest-common-subsequence/
 * Primary idea: Dynamic Programming,  dp[i][j] = dp[i - 1][j - 1] + 1 or max(dp[i - 1][j], dp[i][j - 1])
 *
 * Time Complexity: O(mn), Space Complexity: O(1)
 */

class LongestCommonSubsequence {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        let text1Chars = Array(text1), text2Chars = Array(text2)
        let m = text1.count, n = text2.count
        var dp = Array(repeating: Array(repeating: 0, count: n + 1), count: m + 1)
        
        for i in 1...m {
            for j in 1...n {
                if text1Chars[i - 1] == text2Chars[j - 1] {
                    dp[i][j] = dp[i - 1][j - 1] + 1
                } else {
                    dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])
                }  
            }
        }
        
        return dp[m][n]   
    }
}