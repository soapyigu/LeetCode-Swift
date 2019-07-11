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
        var words = Set(wordList)
        var qWordStep = [(beginWord, 1)]
        
        while !qWordStep.isEmpty {
            let (currentWord, currentStep) = qWordStep.removeFirst()
            
            if currentWord == endWord {
                return currentStep
            }
            
            for (i, currentWordChar) in currentWord.enumerated() {
                for char in "abcdefghijklmnopqrstuvwxyz" {
                    if char != currentWordChar {
                        let newWord = currentWord.replace(at: i, to: char)
                        
                        if words.contains(newWord) {
                            qWordStep.append((newWord, currentStep + 1))
                            
                            words.remove(newWord)
                        }
                    }
                }
            }
        }
        
        return 0
    }
}

extension String {
    func replace(at index: Int, to char: Character) -> String {
        var chars = Array(self)
        
        chars[index] = char
        
        return String(chars)
    }
}