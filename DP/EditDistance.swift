/**
 * Question Link: https://leetcode.com/problems/edit-distance/
 * Primary idea: 2D Dynamic Programming, find minimum step from 
 *               inserting, deleting, or replacing a character
 * Time Complexity: O(mn), Space Complexity: O(mn)
 */

class EditDistance {
    func minDistance(word1: String, _ word2: String) -> Int {
        let aChars = [Character](word1.characters)
        let bChars = [Character](word2.characters)
        let aLen = aChars.count
        let bLen = bChars.count
        
        var dp = Array(count: aLen + 1, repeatedValue:(Array(count: bLen + 1, repeatedValue: 0)))
        
        for i in 0...aLen {
            for j in 0...bLen {
                if i == 0 {
                    dp[i][j] = j
                } else if j == 0 {
                    dp[i][j] = i
                } else if aChars[i - 1] == bChars[j - 1] {
                    dp[i][j] = dp[i - 1][j - 1]
                } else {
                    dp[i][j] = min(dp[i - 1][j - 1], dp[i - 1][j], dp[i][j - 1]) + 1
                }
            }
        }
        
        return dp[aLen][bLen]
    }
}