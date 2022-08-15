/**
 * Question Link: https://leetcode.com/problems/edit-distance/
 * Primary idea: 2D Dynamic Programming, find minimum step from 
 *               inserting, deleting, or replacing a character
 * Time Complexity: O(mn), Space Complexity: O(mn)
 */

class EditDistance {
    func minDistance(word1: String, _ word2: String) -> Int {
        let word1Chars = Array(word1), word2Chars = Array(word2), m = word1.count, n = word2.count
        var distances = Array(repeating: Array(repeating: 0, count: n + 1), count: m + 1)
        
        for i in 0...m {
            for j in 0...n {
                if i == 0 {
                    distances[i][j] = j
                } else if j == 0 {
                    distances[i][j] = i
                } else if word1Chars[i - 1] == word2Chars[j - 1] {
                    distances[i][j] = distances[i - 1][j - 1]
                } else {
                    distances[i][j] = min(distances[i - 1][j - 1], distances[i - 1][j], distances[i][j - 1]) + 1
                }
                
            }
        }
        
        return distances[m][n]
    }
}