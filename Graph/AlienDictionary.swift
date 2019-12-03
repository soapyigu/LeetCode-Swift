/**
 * Question Link: https://leetcode.com/problems/alien-dictionary/
 * Primary idea: Topological sort, keep each character for a inDegree number and 
 *               to characters list, use a queue to decrease inDegree and form the result
 *
 * Time Complexity: O(nm), Space Complexity: O(m), 
 * n represents words number, m represents length of a word
 */

class AlienDictionary {
    var inDegrees = [Character: Int]()
    var toWords = [Character: [Character]]()
    var valid = true

    func alienOrder(_ words: [String]) -> String {
        var res = "", qChars = [Character]()
    
        guard words.count > 0 else {
            return res
        }
        
        initGraph(words)
        
        for char in inDegrees.keys {
            if inDegrees[char] == 0 {
                qChars.append(char)
            }
        }
        
        while !qChars.isEmpty {
            let char = qChars.removeFirst()
            res += String(char)
            
            guard let toChars = toWords[char] else {
                continue
            }
            
            for c in toChars {
                inDegrees[c]! -= 1
                if inDegrees[c] == 0 {
                    qChars.append(c)
                }
            }
        }
        
        return res.characters.count == inDegrees.count && valid ? res : ""
    }
    
    private func initGraph(_ words: [String]) {
        for word in words {
            for char in word.characters {
                inDegrees[char] = 0
            }    
        }
        
        for i in 0..<words.count - 1 {
            let prev = Array(words[i].characters)
            let post = Array(words[i + 1].characters)
            var j = 0
            
            while j < prev.count && j < post.count {
                if prev[j] == post[j] {
                    j += 1
                } else {
                    addEdge(prev[j], post[j])
                    break
                }
            } 
            
            if prev.count != post.count && j == post.count {
                valid = false
            }
        }
    }
    
    private func addEdge(_ from: Character, _ to: Character) {
        if let inDegree = inDegrees[to] {
            inDegrees[to] = inDegree + 1
        }
        
        if toWords[from] != nil {
            toWords[from]!.append(to)
        } else {
            toWords[from] = [to]
        }
    }
}