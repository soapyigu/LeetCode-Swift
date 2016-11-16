/**
 * Question Link: https://leetcode.com/problems/shortest-word-distance/
 * Primary idea: Iterate and update index and distance when encounter word1 or word2
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class ShortestWordDistance {
    func shortestDistance(_ words: [String], _ word1: String, _ word2: String) -> Int {
        var distance = Int.max
        var firstIndex: Int?
        var secondIndex: Int?
        
        for (i, word) in words.enumerated() {
            if word == word1 {
                if let sec = secondIndex {
                    distance = min(distance, i - sec)
                }
                firstIndex = i
            } else if word == word2 {
                if let fir = firstIndex {
                    distance = min(distance, i - fir)
                }
                secondIndex = i
            }
        }
        
        return distance
    }
}