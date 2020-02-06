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
        guard beginWord.count == endWord.count else {
            return 0
        }
        
        var queue = [(beginWord, 1)], wordSet = Set<String>(wordList)
        
        while !queue.isEmpty {
            let (word, step) = queue.removeFirst()
            
            if word == endWord {
                return step
            }
            
            // transform word
            for i in 0..<word.count {
                var wordArray = Array(word)
                
                for char in "abcdefghijklmnopqrstuvwxyz" {
                    guard char != wordArray[i] else {
                        continue
                    }
                    
                    wordArray[i] = char
                    let transformedWord = String(wordArray)
                    
                    guard wordSet.contains(transformedWord) else {
                        continue
                    }
                    
                    wordSet.remove(transformedWord)
                    queue.append((transformedWord, step + 1))
                }
            }
        }
        
        return 0
    }
}
