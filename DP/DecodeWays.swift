/**
 * Question Link: https://leetcode.com/problems/decode-ways/
 * Primary idea: Dynamic Programming, dp[i] = dp[i - 1] + dp[i - 2], 
 *               determine if current one or two characters are number at first
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class DecodeWays {
    func numDecodings(_ s: String) -> Int {
        let chars = Array(s.characters), len = chars.count
        
        guard len > 0 else {
            return 0
        }
        
        var dp = Array(repeating: 0, count: len + 1)
        dp[0] = 1
        dp[1] = isValid(String(chars[0 ..< 1])) ? 1 : 0
       
        guard len >= 2 else {
            return dp[len]
        }
        
        for i in 2 ... len {
            if isValid(String(chars[i - 1 ..< i])) {
                dp[i] += dp[i - 1]
            }
            if isValid(String(chars[i - 2 ..< i])) {
                dp[i] += dp[i - 2]
            }
        }
        
        return dp[len]
    }
    
    private func isValid(_ str: String) -> Bool {
        let chars = Array(str.characters)
        
        if chars[0] == "0" {
            return false
        }
        
        let num = Int(str)!
        
        return num > 0 && num <= 26
    }
}