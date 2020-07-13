/**
 * Question Link: https://leetcode.com/problems/alien-dictionary/
 * Primary idea: Topological sort, keep each character for a inDegree number and 
 *               to characters list, use a queue to decrease inDegree and form the result
 *
 * Time Complexity: O(nm), Space Complexity: O(m), 
 * n represents words number, m represents length of a word
 */

class AlienDictionary {
    func alienOrder(_ words: [String]) -> String {
        var res = "", queueChars = [Character]()
        var (indegrees, charToChars) = initGraph(words)
        
        indegrees.keys.filter { indegrees[$0] == 0 }.forEach { queueChars.append($0) }
        
        while !queueChars.isEmpty {
            let char = queueChars.removeFirst()
            res.append(char)
            
            guard let toChars = charToChars[char] else {
                fatalError("Init Graph Error")
            }
            
            for toChar in toChars {
                guard let indegree = indegrees[toChar] else {
                    fatalError("Init Graph Error")
                }
                
                indegrees[toChar] = indegree - 1
                if indegree == 1 {
                    queueChars.append(toChar)
                }
            }
        }
        
        return res.count == indegrees.count ? res : ""
    }
    
    private func initGraph(_ words: [String]) -> ([Character: Int], [Character: [Character]]) {
        var indegrees = [Character: Int](), charToChars = [Character: [Character]]()
        
        // init indegress and charToChars
        words.forEach { word in
            word.forEach { char in
                indegrees[char] = 0
                charToChars[char] = [Character]() 
            } 
        }
        
        // refactor indegress and charToChars based on words
        for i in 0..<words.count - 1 {
            let currentWord = Array(words[i]), nextWord = Array(words[i + 1])
            var j = 0

            while j < currentWord.count && j < nextWord.count {
                let currentChar = currentWord[j], nextChar = nextWord[j]

                if nextChar == currentChar {
                    j += 1
                    continue
                }
                if let toChars = charToChars[currentChar], toChars.contains(nextChar) {
                    break
                }

                indegrees[nextChar, default: 0] += 1
                charToChars[currentChar, default: [Character]()].append(nextChar)
                break
            }

        }

        return (indegrees, charToChars)
    }
}