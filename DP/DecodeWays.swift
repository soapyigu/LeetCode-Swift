/**
 * Question Link: https://leetcode.com/problems/decode-ways/
 * Primary idea: Dynamic Programming, dp[i] = dp[i - 1] + dp[i - 2], 
 *               determine if current one or two characters are number at first
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class DecodeWays {
    func numDecodings(_ s: String) -> Int {
        let s = Array(s)
        var dp = Array(repeating: 0, count: s.count + 1)
        dp[0] = 1
        
        for i in 1...s.count {
            if s[i - 1] != "0" {
                dp[i] += dp[i - 1]
            }
            
            if i > 1 && isValid(s, i - 2, i - 1) {
                dp[i] += dp[i - 2]
            } 
        }
        
        return dp[s.count]
    }
    
    private func isValid(_ s: [Character], _ start: Int, _ end: Int) -> Bool {
        guard let num = Int(String(s[start...end])) else {
            fatalError()
        }
        
        return num >= 10 && num <= 26
    }
}