/**
 * Question Link: https://leetcode.com/problems/guess-the-word/
 * Primary idea: Random select a word and check the match count. Filter all words having the same match count.
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 * // This is the Master's API interface.
 * // You should not implement it, or speculate about its implementation
 * class Master {
 *     public func guess(word: String) -> Int {}
 * }
 */

class GuessWord {
    func findSecretWord(_ words: [String], _ master: Master) {
        var words = words
        
        for i in 0..<30 {
            let trial = words[words.count / 2]
            let count = master.guess(trial)
            
            if count == 6 {
                return
            }
            
            var possibilities = [String]()
            for word in words {
                if matchCount(trial, word) == count {
                    possibilities.append(word)
                }
            }
            words = possibilities
        }
        
    }
    
    private func matchCount(_ wordA: String, _ wordB: String) -> Int {
        var res = 0
    
        for (charA, charB) in zip(wordA, wordB) {
            if charA == charB {
                res += 1
            }
        }
        
        return res
    }
}
