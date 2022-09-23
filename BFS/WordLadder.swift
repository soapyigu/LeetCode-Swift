/**
 * Question Link: https://leetcode.com/problems/word-ladder/
 * Primary idea: BFS to go over all possible word paths until the word is exactly 
 *               the same as end word, then the path should be the shortest one.
 * 
 * Time Complexity: O(nm), Space Complexity: O(nm)
 *                  n stands for # of words, m stands for length of a word
 *
 */

class WordLadder {
    func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        var wordSet = Set(wordList), wordQueue = [beginWord], count = 1
        
        while !wordQueue.isEmpty {
            
            let size = wordQueue.count
            
            for i in 0..<size {
                let currentWord = wordQueue.removeFirst()
                
                if currentWord == endWord {
                    return count
                }
                
                for word in neighbors(for: currentWord, in: wordSet) {
                    wordQueue.append(word)
                    wordSet.remove(word)
                }
            }
            
            count += 1
        }
        
        return 0
    }
    
    private func neighbors(for word: String, in wordSet: Set<String>) -> [String] {
        var res = [String]()
        
        // change character at every offset of the word
        for i in 0..<word.count {
            var tempWord = Array(word)
            
            for charToReplace in "abcdefghijklmnopqrstuvwxyz" {
                guard charToReplace != tempWord[i] else {
                    continue
                }
                
                tempWord[i] = charToReplace
                let tempWordStr = String(tempWord)
                if wordSet.contains(tempWordStr) {
                    res.append(tempWordStr)
                }
            }
        }
        
        return res
    }
}
