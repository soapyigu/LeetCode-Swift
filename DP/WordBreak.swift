/**
 * Question Link: https://leetcode.com/problems/word-break/
 * Primary idea: DP. dp[i] = dp[j] && dict.contains(s[j..<i]). Break the operation if current index is already true.
 * Time Complexity: O(n^3), Space Complexity: O(n)
 */

class WordBreak {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        let dict = Set(wordDict), s = Array(s)
        var dp = Array(repeating: false, count: s.count + 1)
        dp[0] = true
        
        for i in 1...s.count {
            for j in 0..<i {
                let currentStr = String(s[j..<i])
                
                if dp[j] && wordDict.contains(currentStr) {
                    dp[i] = true
                    break
                }   
            }
        }
        
        return dp[s.count]
    }
}
