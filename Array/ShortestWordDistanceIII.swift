/**
 * Question Link: https://leetcode.com/problems/shortest-word-distance-iii/
 * Primary idea: Iterate and update index and distance when encounter word1 or word2, use
 *			     a temp variable to memorize the previous postion if word1 == word2
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 */

 class ShortestWordDistanceIII {
    func shortestWordDistance(_ words: [String], _ word1: String, _ word2: String) -> Int {
        var idx1 = -1, idx2 = -1, res = Int.max
        
        for (i, word) in words.enumerated() {
            var prev = idx1
            
            if word == word1 {
                idx1 = i
            }
            if word == word2 {
                idx2 = i
            }
            
            if idx1 != -1 && idx2 != -1 {
                if word1 == word2 && prev != -1 && prev != idx1 {
                    res = min(res, idx1 - prev)
                } else if idx1 != idx2 {
                    res = min(res, abs(idx1 - idx2))
                }
            }
        }
        
        return res
    }
}