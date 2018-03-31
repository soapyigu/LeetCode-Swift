/**
 * Question Link: https://leetcode.com/problems/decode-ways/
 * Primary idea: Dynamic Programming, dp[i] = dp[i - 1] + dp[i - 2], 
 *               determine if current one or two characters are number at first
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class DecodeWays {
    func numDecodings(_ s: String) -> Int {
        let sChars = Array(s)
        var dp = Array(repeating: 0, count: s.count + 1)
        dp[0] = 1
        
        guard s.count >= 1 else {
            return 0
        }
        
        for i in 1...s.count {
            if String(sChars[i - 1..<i]).isValid {
                dp[i] += dp[i - 1]
            }
            if i >= 2 && String(sChars[i - 2..<i]).isValid {
                dp[i] += dp[i - 2]
            }
        }
        
        return dp[s.count]
    }
}

extension String {
    var isValid: Bool {
        if let first = first, first == "0" {
            return false
        }
        
        guard let num = Int(self) else {
            return false
        }
        
        return 0 < num && 26 >= num
    }
}