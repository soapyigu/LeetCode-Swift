/**
 * Question Link: https://leetcode.com/problems/wildcard-matching/
 * Primary idea: Classic Two Dimensionel Dynamic Programming
 * Time Complexity: O(mn), Space Complexity: O(mn)
 */

 class WildcardMatching {
    func isMatch(_ s: String, _ p: String) -> Bool {
        let sChars = Array(s), pChars = Array(p)
        var dp = Array(repeating: Array(repeating: false, count: p.count + 1), count: s.count + 1)
        dp[0][0] = true
        
        // must start from 0, to make range feasible and handle empty vs. * case
        for i in 0...s.count {
            for j in 0...p.count {
                guard j > 0 else {
                    continue
                }
                
                let pCurrent = pChars[j - 1]
    
                if pCurrent != "*" {
                    dp[i][j] = i > 0 && dp[i - 1][j - 1] && (pCurrent == sChars[i - 1] || pCurrent == "?")
                } else {
                	// Two situations:
                    // (1) '*' is the first character in p;
                    // (2) For k>=0 and k<=i, there is some dp[k][j-1] being true;
                    //     and '*' will match the rest sequence in s after index k;
                    var flag = false
                    for k in 0...i {
                        if dp[k][j - 1] {
                            flag = true
                            break
                        }
                    }
                    
                    dp[i][j] = flag || j == 1   
                }
            }
        }
        
        return dp[s.count][p.count]
    }
}