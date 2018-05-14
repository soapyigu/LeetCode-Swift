/**
 * Question Link: https://leetcode.com/problems/palindromic-substrings/
 * Primary idea: 2D Dynamic Programming, update boolean array based on
 *               current two characters' equity and the previous boolean subarray
 * Time Complexity: O(n^2), Space Complexity: O(n^2)
 *
 */

class PalindromicSubstrings {
    func countSubstrings(_ s: String) -> Int {
        var palinCount = 0, dp = Array(repeating: Array(repeating: false, count: s.count), count: s.count)
        var s = Array(s)
        
        // init case with distance of 0 and 1
        for i in 0..<s.count {
            dp[i][i] = true
            palinCount += 1
        }
        
        guard s.count > 1 else {
            return palinCount
        }
        
        for i in 0..<s.count - 1 {
            if s[i] == s[i + 1] {
                dp[i][i + 1] = true
                palinCount += 1
            }
        }
        
        guard s.count > 2 else {
            return palinCount
        }
        
        for distance in 2...s.count - 1 {
            for i in 0..<s.count - distance {
                if s[i] == s[i + distance] && dp[i + 1][i + distance - 1] {
                    dp[i][i + distance] = true
                    palinCount += 1
                }
            }
        }
        
        return palinCount
        
    }
}