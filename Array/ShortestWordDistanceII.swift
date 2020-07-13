/**
 * Question Link: https://leetcode.com/problems/shortest-word-distance/
 * Primary idea: Save indexes of all words and use two pointers to get the shortest distance.
 * Time Complexity: O(n), Space Complexity: O(n)
 */

 class WordDistance {
    
    var wordToIdx: [String: [Int]]

    init(_ words: [String]) {
        wordToIdx = [String: [Int]]()
        
        for (idx, word) in words.enumerated() {
            wordToIdx[word, default:[]].append(idx)
        }
    }
    
    func shortest(_ word1: String, _ word2: String) -> Int {
        guard let idxes1 = wordToIdx[word1], let idxes2 = wordToIdx[word2] else {
            fatalError("Invalid Input")
        }
        
        var i = 0, j = 0, minDistance = Int.max
        
        while i < idxes1.count && j < idxes2.count {
            minDistance = min(abs(idxes1[i] - idxes2[j]), minDistance)
            
            if idxes1[i] < idxes2[j] {
                i += 1
            } else {
                j += 1
            }
        }

        return minDistance
    }
}