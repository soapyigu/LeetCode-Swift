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
        var (inDegrees, toChars) = buildGraph(words)
        
        var queue = inDegrees.keys.filter { inDegrees[$0] == 0 }
        var res = ""
        
        while !queue.isEmpty {
            let char = queue.removeFirst()
            
            res.append(char)
            
            for nextChar in toChars[char]! {
                inDegrees[nextChar]! -= 1
                
                if inDegrees[nextChar] == 0 {
                    queue.append(nextChar)
                }
            }
        }
        
        return res.count == inDegrees.count ? res : ""
    }
    
    private func buildGraph(_ words: [String]) -> ([Character: Int], [Character: [Character]]) {
        // init inDegrees and toChars
        var inDegrees = [Character: Int](), toChars = [Character: [Character]]()
        
        words.forEach { word in
            word.forEach { char in
                inDegrees[char] = 0
                toChars[char] = [Character]()
            }
        }
        
        // update based on orders
        for i in 0..<words.count - 1 {
            let left = Array(words[i]), right = Array(words[i + 1])
            
            for j in 0..<min(left.count, right.count) {
                if left[j] == right[j] {
                    
                    // invalid use case
                    if j + 1 == right.count && right.count < left.count {
                        return ([Character: Int](), [Character: [Character]]())
                    }
                    
                    continue
                }
                
                if toChars[left[j]]!.contains(right[j]) {
                    break
                }
                
                inDegrees[right[j]]! += 1
                toChars[left[j]]!.append(right[j])
                break
                
            }
        }
        
        return (inDegrees, toChars)
    }
}