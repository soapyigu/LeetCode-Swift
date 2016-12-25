/**
 * Question Link: https://leetcode.com/problems/shortest-word-distance/
 * Primary idea: Iterate and update index and distance when encounter word1 or word2
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class ShortestWordDistance {
    func shortestDistance(_ words: [String], _ word1: String, _ word2: String) -> Int {
        var distance = Int.max
        var firstIndex = -1, secondIndex = -1
        
        for (i, word) in words.enumerated() {
            if word == word1 {
                firstIndex = i
            } 
            if word == word2 {
                secondIndex = i
            }
            if firstIndex != -1 && secondIndex != -1 {
                distance = min(distance, abs(firstIndex - secondIndex))
            }
        }
        
        return distance
    }
}